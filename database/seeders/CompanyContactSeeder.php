<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Contact;
use App\Models\company;

class CompanyContactSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $contacts = Contact::all();
        $companies = company::select('id')->get()->toArray();
        $count = 0;
        foreach($contacts as $contact)
        {
            // echo $companies[$count]['id'].'<br/>';
            if(isset($companies[$count]['id']))
            {                
                DB::table('company_contacts')->insert([
                    'company_id' => $contact->id,
                    'contact_id' => $companies[$count]['id']
                ]);
                $count++;
                DB::table('company_contacts')->insert([
                    'company_id' => $contact->id,
                    'contact_id' => $companies[$count]['id']
                ]);
                echo $companies[$count]['id'].'<br/>';
            }
            else
            {
                break;
            }
     
            
        }

    }
}
