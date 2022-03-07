<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
use App\Models\CompanyContact;
use Illuminate\Support\Facades\Validator;
use Faker\Factory as Faker;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contact = Contact::get()->toJson(JSON_PRETTY_PRINT);
        return response($contact, 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if (Contact::where('id', $id)->exists()) {
            $contact = Contact::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($contact, 200);
        } else {
            return response()->json([
              "message" => "Resource not found"
            ], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if (!Contact::where('id', $id)->exists()) {
            return response()->json([
                "message" => "Resource not found"
              ], 404);
        }
        
        $validator = Validator::make($request->all(), [
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|numeric:10',
          ]);

        if($validator->fails())
        {
            return response()->json($validator->getMessageBag(),400);
        }

        $contact = Contact::where('id',$id)->first();

        $contact->first_name = $request->first_name;
        $contact->last_name = $request->last_name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->updated_at = now();
        $contact->save();

        return response()->json('Resources updated',200);
    }

        /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {

        
        $validator = Validator::make($request->all(), [
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|numeric:10',
          ]);

        if($validator->fails())
        {
            return response()->json($validator->getMessageBag(),400);
        }

        $faker = Faker::create();
        $contact = new Contact;

        $contact->first_name = $request->first_name;
        $contact->last_name = $request->last_name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->id = $faker->uuid();
        $contact->save();

        return response()->json('Resource created',200);
    }

        /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (!Contact::where('id', $id)->exists()) {
            return response()->json([
                "message" => "Resource not found"
              ], 404);
        }

        if (CompanyContact::where('contact_id', $id)->exists()) {
            $companyContact = CompanyContact::where('contact_id',$id)->first();
            $companyContact->delete();
        }
        
        $company = Contact::where('id',$id)->first();
        $company->delete();
        
        return response()->json('Resource deleted',200);
    }
}
