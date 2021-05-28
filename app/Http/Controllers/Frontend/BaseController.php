<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use App\Models\FormRequest;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    public function __construct()
    {
        $pages = $this->getMenu();
        if ($pages === null) {
            abort(404);
        }
        $pages = $pages->reject(function ($value, $key) {
            return $value->id === 6;
        });

        $contacts = Contact::first();

        view()->share(compact('pages', 'contacts'));
    }

    public function sendForm(Request $request)
    {

        $contacts = Contact::first();

        $req = request()->except('_token', '_method');

        $req['is_new'] = true;

        $to = $contacts->email;

        if ($to !== null) {
            $title = 'Нужна консультация';

            $message_header = '
                <html>
                    <head>
                        <title>Консультация</title>
                        <meta charset="utf8">
                    </head>
                    <body>'
            ;

            $message_body = '';

            if (isset($req['phone'])) {
                $message_body .= '<p>Телефон:  ' . $req['phone'] . '</p>';
            }
            if (isset($req['name'])) {
                $message_body .= '<p>Имя:  ' . $req['name'] . '</p>';
            }
            if (isset($req['body'])) {
                $message_body .= '<p>Комментарий:  ' . $req['body'] . '</p>';
            }
            if (isset($req['page'])) {
                $message_body .= '<p>Страница:  ' . $req['page'] . '</p>';
            }
            $message_footer = '
                    </body>
                </html>';

            $headers[] = 'MIME-Version: 1.0';
            $headers[] = 'Content-type: text/html; charset=utf8';
            $headers[] = 'To: Receiver <' . $to . '>';
            $headers[] = 'From: FertigHaus <test@test.com>';
            $mail = mail($to, $title, $message_header . $message_body . $message_footer, implode("\r\n", $headers));
        }

        $form_request = FormRequest::create($req);
    }

    public function storeWithTranslation($model, $data, $translation)
    {
        $model = $model::create($data);
        $translation = $model->translations()->create($translation);
        return compact('model', 'translation');
    }
}
