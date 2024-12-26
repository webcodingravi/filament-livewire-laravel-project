<div class="mt-4 col-xl-3 col-lg-4 col-md-6">
    <div class="text-center bg-transparent border-0 card">
        <div class="card-img">
            @if ($member->image != '')
                <img loading="lazy" decoding="async" src={{ asset('/storage/' . $member->image) }} alt="Scarlet Pena"
                    class="rounded w-100" width="300" height="332">
            @endif


            @if ($member->fb_url != '' || $member->tw_url != '' || $member->in_url != '')

                <ul class="card-social list-inline">
                    @if ($member->fb_url != '')
                        <li class="list-inline-item"><a class="facebook" href="{{ $member->fb_url }}"><i
                                    class="fab fa-facebook" target="_blank"></i></a>
                        </li>
                    @endif

                    @if ($member->tw_url != '')
                        <li class="list-inline-item"><a class="twitter" href="{{ $member->tw_url }}"><i
                                    class="fab fa-twitter" target="_blank"></i></a>
                        </li>
                    @endif
                    @if ($member->in_url != '')
                        <li class="list-inline-item"><a class="instagram" href="{{ $member->in_url }}"><i
                                    class="fab fa-instagram" target="_blank"></i></a>
                        </li>
                    @endif
                </ul>
            @endif
        </div>
        <div class="card-body">
            <h3>{{ $member->name }}</h3>
            <p>{{ $member->designation }}</p>
        </div>
    </div>
</div>
