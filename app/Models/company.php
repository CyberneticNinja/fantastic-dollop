<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;
use App\Models\CompanyContact;
use Illuminate\Support\Facades\DB;

class company extends Model
{
    use HasFactory,HasFactory;
    
    public $incrementing = false;
    
    public function companycontacts($id)
    {
        return CompanyContact::where('company_id',addslashes($id))->get();
    }
}
