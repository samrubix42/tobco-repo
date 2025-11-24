<?php
namespace App\Http\Middleware;
use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\AuthenticationException;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request): ?string
    {
        // Only redirect if the request is not expecting JSON (i.e., it's a browser request)
        if (! $request->expectsJson()) {
            return route('login'); // or return '/login';
        }

        return null; // For API or AJAX, let Laravel return a JSON error
    }

    protected function unauthenticated($request, array $guards)
    {
        // This is called when redirectTo() returns null and Laravel needs to decide what to do
        throw new AuthenticationException(
            'Unauthenticated.', $guards, $this->redirectTo($request)
        );
    }
}
