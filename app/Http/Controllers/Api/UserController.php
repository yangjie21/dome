<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class UserController extends ApiController
{
    /**
     * details api
     *
     * @return \Illuminate\Http\Response
     */
    public function details()
    {
        $user = Auth::user();
        return $this->renderSuccess($user);
    }

    public function verify_code(){
        $data = [1,2,3,4];
        return $this->renderSuccess($data);
    }
}
