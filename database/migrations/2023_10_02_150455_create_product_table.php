<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product', function (Blueprint $table) {
            $table->id();
            $table->integer('category')->nullable();
            $table->string('title')->nullable();
            $table->string('slug')->nullable();
            $table->string('reg_price')->nullable();
            $table->string('sale_price')->nullable();
            $table->string('sku')->nullable();
            $table->string('unit_type')->nullable();
            $table->integer('featured')->nullable();
            $table->integer('popular')->nullable();
            $table->integer('deals')->nullable();
            $table->date('deals_date')->nullable();
            $table->text('variance_data')->nullable();
            $table->string('image')->nullable();
            $table->text('description')->nullable();
            $table->text('short_description')->nullable();
            $table->text('additional_info')->nullable();
            $table->string('meta_title')->nullable();
            $table->string('meta_keyword')->nullable();
            $table->text('meta_description')->nullable();
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
        Schema::dropIfExists('product');
    }
};
