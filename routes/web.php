<?php

use Illuminate\Support\Facades\Route;
use Laravel\Fortify\Features;

Route::inertia('/', 'public/Home')->name('home');
Route::inertia('/about', 'public/About')->name('about');
Route::inertia('/product', 'public/Product')->name('product');
Route::inertia('/contact', 'public/Contact')->name('contact');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::inertia('dashboard', 'admin/Dashboard')->name('dashboard');
});

require __DIR__ . '/settings.php';
