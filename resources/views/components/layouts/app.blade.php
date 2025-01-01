<!DOCTYPE html>

<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">


<head>
    <meta charset="utf-8">
    <title>{{ $title ?? 'Laravel livewire web App' }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5">
    <meta name="description" content="This is meta description">
    <meta name="author" content="Themefisher">
    <link rel="shortcut icon" href="{{ asset('front/images/logo.png') }}" type="image/x-icon">
    <link rel="icon" href="{{ asset('front/images/logo.png') }}" type="image/x-icon">

    <!-- # Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- # CSS Plugins -->
    <link rel="stylesheet" href={{ asset('front/plugins/slick/slick.css') }}>
    <link rel="stylesheet" href={{ asset('front/plugins/font-awesome/fontawesome.min.css') }}>
    <link rel="stylesheet" href={{ asset('front/plugins/font-awesome/brands.css') }}>
    <link rel="stylesheet" href={{ asset('front/plugins/font-awesome/solid.css') }}>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- # Main Style Sheet -->
    <link rel="stylesheet" href={{ asset('front/css/style.css') }}>
    @livewireStyles
</head>

<body>
    @livewireScripts
    <!-- navigation -->
    <header class="navigation bg-tertiary">
        <nav class="py-3 text-center navbar navbar-expand-xl navbar-light">
            <div class="container">
                <a wire:navigate class="navbar-brand" href={{ route('home') }}>
                    <img loading="prelaod" decoding="async" class="img-fluid" width="160"
                        src={{ asset('front/images/logo.png') }} alt="Wallet">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="m-auto mb-2 navbar-nav mb-lg-0">
                        <li class="nav-item"> <a wire:navigate class="nav-link" href="{{ route('home') }}">Home</a>
                        </li>
                        <li class="nav-item "> <a wire:navigate class="nav-link" href="{{route('page','about-us')}}">About Us</a></li>
                        <li class="nav-item "> <a wire:navigate class="nav-link"
                                href="{{ route('servicesPage') }}">Services</a></li>
                        <li class="nav-item "> <a wire:navigate class="nav-link" href="{{ route('teamPage') }}">Our
                                Team</a></li>
                        <li class="nav-item "><a wire:navigate class="nav-link " href="{{route('blog')}}">Blog</a></li>
                        <li class="nav-item "><a wire:navigate class="nav-link " href="{{route('faqs')}}">FAQ</a></li>
                    </ul>
                    <a wire:navigate href="{{route('contact')}}" class="btn btn-outline-primary">Contact Us</a>
                </div>
            </div>
        </nav>
    </header>
    <!-- /navigation -->
    {{ $slot }}

    <footer class="section-sm bg-tertiary">
        <div class="container">
            <div class="row justify-content-between">
                <div class="mb-4 col-lg-2 col-md-4 col-6">
                    <div class="footer-widget">
                        <h5 class="mb-4 text-primary font-secondary">Service</h5>
                        <ul class="list-unstyled">
                            @foreach (getServices() as $service)
                            <li class="mb-2"><a wire:navigate href="{{route('servicePage',$service->id)}}">{{$service->title}}</a>
                            </li>
                            @endforeach

                        </ul>
                    </div>
                </div>
                <div class="mb-4 col-lg-2 col-md-4 col-6">
                    <div class="footer-widget">
                        <h5 class="mb-4 text-primary font-secondary">Quick Links</h5>
                        <ul class="list-unstyled">
                            <li class="mb-2"><a wire:navigate href="{{route('page','about-us')}}">About Us</a>
                            </li>
                            <li class="mb-2"><a wire:navigate href="{{route('contact')}}">Contact Us</a>
                            </li>
                            <li class="mb-2"><a wire:navigate href="{{route('blog')}}">Blog</a>
                            </li>
                            <li class="mb-2"><a wire:navigate href="{{route('teamPage')}}">Team</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="mb-4 col-lg-2 col-md-4 col-6">
                    <div class="footer-widget">
                        <h5 class="mb-4 text-primary font-secondary">Other Links</h5>
                        <ul class="list-unstyled">
                            <li class="list-inline-item me-4"><a class="text-black" wire:navigate href="{{route('page','privacy-policy')}}">Privacy
                                    Policy</a>
                            </li>
                            <li class="list-inline-item me-4"><a class="text-black" wire:navigate href="{{route('page','terms-conditions')}}">Terms &amp;
                                    Conditions</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </footer>

    <!-- # JS Plugins -->
    <script src={{ asset('front/plugins/jquery/jquery.min.js') }}></script>
    <script src={{ asset('front/plugins/bootstrap/bootstrap.min.js') }}></script>

    <!-- Main Script -->
    <script src={{ asset('front/js/script.js') }}></script>

</body>

</html>
