<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class QiniuController extends ApiController
{
    //
    public function qiniuyunToken()
    {
        $disk = Storage::disk('qiniu');
        $token = $disk->getDriver()->uploadToken();
        return $this->renderSuccess($token);
    }
}
