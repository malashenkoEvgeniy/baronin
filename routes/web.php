<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

use App\Http\Controllers\Admin\PriceController;

Auth::routes();

// Route::any('/register', function () {
//     return redirect('/');
// });

Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath', 'auth'],
    ], function () {

        Route::group(['prefix' => 'admin-panel'], function () {
            Route::get('/', 'HomeController@index')->name('home');
            Route::resource('main_page', 'Admin\MainPageController');
            Route::resource('pages', 'Admin\PageController');
            Route::resource('price', 'Admin\PriceController');
            Route::get('price/up/{id}', 'Admin\PriceController@up')->name('price_up');
            Route::resource('contacts', 'Admin\ContactController');
            Route::resource('portfolio', 'Admin\PortfolioController');
            Route::resource('projects', 'Admin\ProjectController');
            Route::resource('project_image', 'Admin\ProjectImageController');
            Route::resource('form_requests', 'Admin\FormRequestsController');

            Route::post('store-image', 'Admin\BaseController@storeImage')->name('store_image');
        });
    });

Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath'],
    ], function () {

        Route::get('/', 'Frontend\PageController@index');
        Route::get('/contacts', 'Frontend\PageController@contacts');
        Route::get('/price', 'Frontend\PageController@price');
        Route::get('/projects', 'Frontend\PortfolioController@index');
        Route::get('/projects/{project}', 'Frontend\PortfolioController@show');
        Route::get('/{page}', 'Frontend\PageController@show');

        Route::post('/send-form', 'Frontend\BaseController@sendForm')->name('sendForm');

    });
