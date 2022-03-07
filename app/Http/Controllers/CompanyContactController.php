<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CompanyContact;
use Illuminate\Support\Facades\Validator;

class CompanyContactController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contact = CompanyContact::get()->toJson(JSON_PRETTY_PRINT);
        return response($contact, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {    
        $validator = Validator::make($request->all(), [
            'company_id' => 'required|string',
            'contact_id' => 'required|string',
          ]);

        if($validator->fails())
        {
            return response()->json($validator->getMessageBag(),400);
        }

        $cc = new CompanyContact();

        if (!$cc->company($request->company_id)-> first()) {
            return response()->json([
                "message" => "Resource not found"
              ], 404);
        }
        if (!$cc->contact($request->contact_id)-> first()) {
            return response()->json([
                "message" => "Resource not found"
              ], 404);
        }

        $cc = new CompanyContact;
        $cc->company_id = $request->company_id;
        $cc->contact_id = $request->contact_id;
        $cc->save();

        return response()->json('Resources created',200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if (CompanyContact::where('id', $id)->exists()) {
            $cc = CompanyContact::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($cc, 200);
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
        if (!CompanyContact::where('id', $id)->exists()) {
            return response()->json([
                "message" => "Resource not found"
              ], 404);
        }
        
        $validator = Validator::make($request->all(), [
            'company_id' => 'required|string',
            'contact_id' => 'required|string',
          ]);

        if($validator->fails())
        {
            return response()->json($validator->getMessageBag(),400);
        }

        $cc = new CompanyContact();

        if (!$cc->company($request->company_id)-> first()) {
            return response()->json([
                "message" => "Resource not found"
              ], 404);
        }
        if (!$cc->contact($request->contact_id)-> first()) {
            return response()->json([
                "message" => "Resource not found"
              ], 404);
        }

        $cc = CompanyContact::where('id',$id)->first();
        $cc->company_id = $request->company_id;
        $cc->contact_id = $request->contact_id;
        $cc->save();

        return response()->json('Resources updated',200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (!CompanyContact::where('id', $id)->exists()) {
            return response()->json([
                "message" => "Resource not found"
              ], 404);
        }

        $companyContact = CompanyContact::where('id',$id)->first();
        $companyContact->delete();
        
        return response()->json('Resource deleted',200);
    }
}
