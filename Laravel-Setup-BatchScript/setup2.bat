@echo off

:: Install dependencies
call composer install

:: Install npm dependencies
call npm install

:: Copy .env.example to .env
copy ".env.example" ".env"

:: Generate application key
call php artisan key:generate
pause