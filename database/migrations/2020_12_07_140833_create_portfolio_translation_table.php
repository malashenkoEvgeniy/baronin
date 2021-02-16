<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePortfolioTranslationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('portfolio_translation', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->char('title', 255)->nullable();
            $table->text('body')->nullable();
            $table->text('body_bottom')->nullable();
            $table->char('language', 10);
            $table->char('seo_title', 255)->nullable();
            $table->text('seo_description')->nullable();
            $table->text('seo_keywords')->nullable();
            $table->bigInteger('portfolio_id')->unsigned();
            $table->foreign('portfolio_id')->references('id')->on('portfolio')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('portfolio_translation');
    }
}
