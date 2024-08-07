@echo off

:: Install dependencies
call composer install

:: Install npm dependencies
call npm install

:: Copy env files to current folder
copy /y "..\.env" "%cd%"

:: Generate application key
call php artisan key:generate

:: Migrate Database
call php artisan migrate

:: Dummy DB Seed
call php artisan db:seed

:: Open first tab with npm run dev
start /min "Tab 1" cmd /k npm run dev

:: Open second tab with PHP artisan serve
start /min "Tab 2" cmd /k php artisan serve

:: Open a specific URL in the default web browser
start http://127.0.0.1:8000/