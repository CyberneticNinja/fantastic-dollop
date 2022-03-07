<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    public $incrementing = false;

    public function companycontacts($id)
    {
        return CompanyContact::where('company_id',addslashes($id))->get();
    }
}
