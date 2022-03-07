<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\company as Company;
use App\Models\CompanyContact;
use Illuminate\Support\Facades\Validator;
use App\Http\Traits\US_StatesTraits;
use Faker\Factory as Faker;

class CompanyController extends Controller
{
    use US_StatesTraits;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $company = Company::get()->toJson(JSON_PRETTY_PRINT);
        return response($company, 200);
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
            'email' => 'required|email',
            'name' => 'required',
            'phone' => 'required|numeric:10',
            'city'  => 'required',
            'state' => 'required',
            'street_address' => 'required',
            'state' => 'required',
            'zip' => 'required|digits:5',
          ]);

        if($validator->fails())
        {
            return response()->json($validator->getMessageBag(),400);
        }

        if(!$this->findState($request->state))
        {
            return response()->json($request->state.' does not exist, full state names only. example: Florida not FL',400);
        }

        $faker = Faker::create();
        $company = new Company;

        $company->name = $request->name;
        $company->email = $request->email;
        $company->phone = $request->phone;
        $company->city = $request->city;
        $company->state = $request->state;
        $company->street_address = $request->street_address;
        $company->state = $request->state;
        $company->zip = $request->zip;
        $company->id = $faker->uuid();
        $company->save();

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
        if (Company::where('id', $id)->exists()) {
            $company = Company::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($company, 200);
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
        if (!Company::where('id', $id)->exists()) {
            return response()->json([
                "message" => "Resource not found"
              ], 404);
        }
        
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'name' => 'required',
            'phone' => 'required|numeric:10',
            'city'  => 'required',
            'state' => 'required',
            'street_address' => 'required',
            'state' => 'required',
            'zip' => 'required|digits:5',
          ]);

        if($validator->fails())
        {
            return response()->json($validator->getMessageBag(),400);
        }

        if(!$this->findState($request->state))
        {
            return response()->json($request->state.' does not exist, full state names only. example: Florida not FL',400);
        }

        $company = Company::where('id',$id)->first();

        $company->name = $request->name;
        $company->email = $request->email;
        $company->phone = $request->phone;
        $company->city = $request->city;
        $company->state = $request->state;
        $company->street_address = $request->street_address;
        $company->state = $request->state;
        $company->zip = $request->zip;
        $company->updated_at = now();
        $company->save();

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
        if (!Company::where('id', $id)->exists()) {
            return response()->json([
                "message" => "Resource not found"
              ], 404);
        }

        if (CompanyContact::where('company_id', $id)->exists()) {
            $companyContact = CompanyContact::where('company_id',$id)->first();
            $companyContact->delete();
        }
        
        $company = Company::where('id',$id)->first();
        $company->delete();
        
        return response()->json('Resources deleted',200);
    }
}
