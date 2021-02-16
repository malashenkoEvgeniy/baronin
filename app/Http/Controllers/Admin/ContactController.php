<?php

namespace App\Http\Controllers\Admin;

use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends BaseController
{
    protected $storePath = '/uploads/contact/';
    public function __construct()
    {
        parent::__construct();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page = Contact::first();
        if ($page === null) {
            $page = Contact::create(['email' => 'test@test.com']);
            $page->translations()->create(['language' => 'ru', 'seo_title' => 'Контакты']);
        }
        return view('admin.contacts.edit', compact('page'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $page = Contact::find($id);
        $req = request()->only('phone_1', 'phone_2', 'phone_3', 'viber', 'telegram', 'email', 'banner', 'facebook', 'instagram');
        $reqTranslation = request()->except('phone_1', 'phone_2', 'phone_3', 'viber', 'telegram', 'email', 'banner', 'facebook', 'instagram');

        if (request()->file('banner') !== null) {
            $this->deleteFile($page->image);
            $file = $this->storeFile(request()->file('banner'), $this->storePath);
            $req['banner'] = $file['path'];
        }

        $page->update($req);

        $page = $this->updateTranslation($page, $reqTranslation, $request);

        return redirect()->back()->with('success', 'Запись успешно обновлена');
    }

}
