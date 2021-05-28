<?php

namespace App\Exceptions;

use App\Models\Contact;
use App\Models\Page;
use Exception;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * @param  \Exception  $exception
     * @return void
     */
    public function report(Exception $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $exception
     * @return \Illuminate\Http\Response
     */
    public function render($request, Exception $exception)
    {
        if($this->isHttpException($exception)){
            switch ($exception->getStatusCode()) {
                case 400:
                    return redirect('/');
                case 404:
                    $contacts = Contact::first();
                    $pages = Page::get();
                    return response()->make(view('errors.404', compact('contacts', 'pages')), 404);
                case 500:
                    return response()->make(view('errors.404'), 404);
                case 505:
                    return response()->make(view('errors.404'), 404);

            }
        }
        if($exception instanceof NotFoundHttpException)
        {

            return response()->make(view('errors.404'), 404);
        }

        return parent::render($request, $exception);
    }
}
