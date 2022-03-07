<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\company as Company;
use App\Models\Contact;


class CompanyContact extends Model
{
    public $timestamps = false;

    use HasFactory;

    public function company($id)
    {
        return Company::where('id',$id)->get();
    }

    public function contact($id)
    {
        return Contact::where('id',$id)->get();
    }
}
