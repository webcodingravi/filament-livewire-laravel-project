<div class="col-lg-4 col-md-6 service-item">
    <a wire:navigate class="text-black" href={{ route('servicePage', $service->slug) }}>
        <div class="block"> <span class="mb-4 text-center colored-box h3">{{ $x }}</span>
            <h3 class="mb-3 service-title">{{ $service->title }}</h3>
            <p class="mb-0 service-description">{{ $service->short_desc }}</p>
        </div>
    </a>
</div>
