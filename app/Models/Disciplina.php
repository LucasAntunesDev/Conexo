<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Disciplina extends Model {
    use HasFactory;
    public function grupos() {
        return $this->hasMany(Grupo::class);
    }
}



