@extends('front.layout')

@section('content')

<!-- White bullets fix -->
<style>
    ul.custom-white-bullets {
        color: white !important;
        list-style-type: disc !important;
        padding-left: 22px !important;
        line-height: 1.8;
    }
    ul.custom-white-bullets li::marker {
        color: white !important;
    }
    /* Image container helpers to keep layout tidy */
    .about-card { overflow: hidden; background: #000; }
    .about-top { height: 380px; }
    .about-mid { height: 280px; }
    .about-bottom { height: 280px; }
    .about-card img { width: 100%; height: 100%; object-fit: cover; display: block; }
</style>

<div class="page-content">
    <div class="container py-5">

        <!-- Top: Heading + Intro -->
        <header class="text-center mb-5">
            <h1 class="display-5 fw-bold mb-2" style="color:white">Best Hookah Shop in Noida | Tobac-Go</h1>

            <p class="text-white mb-4">
                At Tobac-Go, we welcome you to a place where quality, comfort, and style come together. Tobac-Go stands as the Best Hookah Shop in Noida because we keep things simple, honest, and enjoyable.
            </p>

            <p class="text-white mb-4">
                We are here to help you choose the best hookah setup for your home, party, or lounge. Whether you’re new to hookah or already know what you want, Tobac-Go makes your buying experience easy and smooth.
            </p>
        </header>

        <!-- Top Images -->
        <section class="mb-5">
            <div class="container">
                <div class="row justify-content-center g-4">

                    <div class="col-md-6 col-lg-5">
                        <div class="card shadow-lg border-0 rounded-4 about-card about-top">
                            <img src="{{ asset('public/frontend/assets/images/about/top/hookah-shop-in-noida.jpg') }}"
                                class="" alt="hookah-shop-in-noida.jpg">
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-5">
                        <div class="card shadow-lg border-0 rounded-4 about-card about-top">
                            <img src="{{ asset('public/frontend/assets/images/about/top/tobac-go-interior.jpeg') }}"
                                class="" alt="tobac-go-interior.jpeg">
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- Why Tobac Go -->
        <section class="mb-4">
            <h2 class="h2 mb-3" style="color:white;">Why Tobac-Go Is Known as the Best Hookah Shop in Noida</h2>

            <p class="text-white">
                We work hard every day to offer products that match your taste and style. Tobac-Go believes that everyone deserves a high-quality hookah without stress or confusion. Here’s why many customers trust us:
            </p>

            <ul class="custom-white-bullets">
                <li>We keep only genuine premium and luxury hookahs.</li>
                <li>You get a wide range of flavours to try and enjoy.</li>
                <li>Our accessories help you upgrade your hookah setup anytime.</li>
                <li>We guide you based on your needs, not just trends.</li>
                <li>You enjoy fair prices with great value.</li>
            </ul>

            <p class="text-white mt-3">
                When people search for the Best Hookah Shop in Noida, they want a place that listens to them. At Tobac-Go, we treat every customer with care.
            </p>
        </section>

        <!-- Hookah Collection -->
        <section class="mb-5">
            <h2 class="h2 mb-3" style="color:white">Our Premium and Luxury Hookah Collection</h2>

            <p class="text-white mb-4">
                We offer hookahs that are strong, stylish, and long-lasting. Our team carefully selects each piece to ensure you enjoy smooth and rich smoke every time.
            </p>

            <ul class="custom-white-bullets">
                <li>Premium hookahs for regular use</li>
                <li>Luxury hookahs for decor or special moments</li>
                <li>Modern hookah designs</li>
                <li>Classic hookah designs</li>
                <li>Travel-friendly hookahs for easy carrying</li>
            </ul>

            <p class="text-white mt-3">
                When we say premium, we mean hookahs that look good and perform well. Choose your perfect match based on size, color, design, and shape.
            </p>
        </section>

        <!-- Middle Image Cards -->
        <div class="row g-4 mb-4">
            <div class="col-12 col-md-4">
                <div class="card border-0 shadow-sm rounded-3 h-40 about-card about-mid">
                    <img src="{{ asset('public/frontend/assets/images/about/middle/premium-hookah.jpg') }}"
                        alt="premium-hookah.jpg" style="object-fit:contain; background-color:#171717;">
                </div>
            </div>

            <div class="col-12 col-md-4">
                <div class="card border-0 shadow-sm rounded-3 h-40 about-card about-mid">
                    <img src="{{ asset('public/frontend/assets/images/about/middle/hookah-shop-noida.jpg') }}"
                        alt="hookah-shop-noida.jpg" style="object-fit:contain; background-color:#171717;">
                </div>
            </div>

            <div class="col-12 col-md-4">
                <div class="card border-0 shadow-sm rounded-3 h-40 about-card about-mid">
                    <img src="{{ asset('public/frontend/assets/images/about/middle/tobac-go-noida.jpg') }}"
                        alt="tobac-go-noida.jpg" style="object-fit:contain; background-color:#171717;">
                </div>
            </div>
        </div>

        <!-- Flavours -->
        <section class="mb-4 mt-4">
            <h2 class="h2 mb-3" style="color:white;">Flavours That Lift Your Mood</h2>

            <p class="text-white">
                At Tobac-Go, we know how important flavours are. A good flavour can change your whole experience. That’s why we keep many choices for you.
            </p>

            <p class="text-white">
                You will find sweet flavours, cool flavours, minty ones, fruit types, and mixed blends. We store only fresh and original flavours so you get smooth smoke and pure taste. If you are unsure what to buy, we guide you with simple suggestions based on your likes.
            </p>
        </section>

        <!-- Accessories -->
        <section class="mb-4">
            <h2 class="h2 mb-3" style="color:white;">All Hookah Accessories Under One Roof</h2>

            <p class="text-white">
                You do not need to visit different shops. Tobac-Go keeps all needed accessories in one place.
            </p>

            <p class="text-white mb-2">We offer:</p>

            <ul class="custom-white-bullets">
                <li>Pipes</li>
                <li>Bowls</li>
                <li>Charcoal</li>
                <li>Heat management devices</li>
                <li>Foils</li>
                <li>Mouth tips</li>
                <li>Cleaning tools</li>
                <li>Lighters</li>
                <li>Ash trays and more...</li>
            </ul>

            <p class="text-white mt-3">
                With the right accessories, your hookah performs better and lasts longer. We help you choose the right items based on your current setup.
            </p>
        </section>

        <!-- Shopping Experience -->
        <section class="mb-4">
            <h2 class="h2 mb-3" style="color:white;">A Friendly and Easy Shopping Experience</h2>

            <p class="text-white">
                We believe the best shop is the one where you feel heard. That is why we talk to you, ask you about your needs, and guide you step by step.
            </p>

            <p class="text-white">
                Whether you visit us offline in Noida or shop online, we try to make your experience smooth. Your time matters, and we respect that.
            </p>
        </section>

        <!-- Bottom Image Cards -->
        <div class="row g-4 mb-4">
                <div class="col-12 col-md-4">
                <div class="card border-0 shadow-sm rounded-3 h-40 about-card about-bottom">
                    <img src="{{ asset('public/frontend/assets/images/about/bottom/hookah-store.jpg') }}" alt="hookah-store.jpg" style="object-fit:contain; background:#171717;">
                </div>
            </div>

            <div class="col-12 col-md-4">
                <div class="card border-0 shadow-sm rounded-3 h-40 about-card about-bottom">
                    <img src="{{ asset('public/frontend/assets/images/about/bottom/luxury-hookah-design.jpg') }}" alt="luxury-hookah-design.jpg" style="object-fit:contain; background:#171717;">
                </div>
            </div>

            <div class="col-12 col-md-4">
                <div class="card border-0 shadow-sm rounded-3 h-40 about-card about-bottom">
                    <img src="{{ asset('public/frontend/assets/images/about/bottom/premium-hookah-design.jpg') }}" alt="premium-hookah-design.jpg" style="object-fit:contain; background:#171717;">
                </div>
            </div>
        </div>

        <!-- Visit Today -->
        <section class="mb-4">
            <h2 class="h2 mb-3" style="color:white;">Visit Tobac-Go Today</h2>

            <p class="text-white">
                If you are looking for the Best Hookah Shop in Noida, we are here for you.
            </p>

            <p class="text-white">
                We invite you to visit our store and see the quality yourself. If you want help, just ask — we listen, we guide, and we offer what suits you best.
            </p>

            <p class="text-white">
                Your perfect hookah journey starts right here.
            </p>
        </section>

        <!-- Address -->
        <section class="mb-5 bg-light p-4 rounded">
            <p class="mb-1"><strong>Tobac-Go</strong></p>
            <p class="mb-1">
                Shop no 38,39, Lower Ground Floor, Street 76, Market, Amarpali Silicon City, Sector 76, Noida, Uttar Pradesh 201316
            </p>
            <p>Phone: <a href="tel:078384 49604">078384 49604</a></p>

            <div class="ratio ratio-16x9 mt-3">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3504.0497827883187!2d77.38032527549848!3d28.56826777569995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cef9220724b87%3A0x21576299f7843f22!2sTobac-go!5e0!3m2!1sen!2sin!4v1763726221613!5m2!1sen!2sin"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy">
                </iframe>
            </div>
        </section>

    </div>
</div>

@endsection
