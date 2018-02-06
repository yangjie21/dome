<?php

namespace App\Exceptions;

use App\Api\Helpers\Api\ExceptionReport;
use Exception;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;

class Handler extends ExceptionHandler
{
    /**
     *  其他代码...
     */

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $exception
     * @return \Illuminate\Http\Response
     */
    public function render($request, Exception $exception)
    {
        // 将方法拦截到自己的ExceptionReport
        $reporter = ExceptionReport::make($exception);

        if ($reporter->shouldReturn()){
            return $reporter->report();
        }

        return parent::render($request, $exception);
    }
}