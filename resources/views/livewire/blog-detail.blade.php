<main>
    <div class="section">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-10">
              <div class="mb-5">
                <h2 class="mb-4" style="line-height:1.5">{{$article->title}}</h2>
                <span>{{\Carbon\Carbon::parse($article->created_at)->format('d, M Y')}} <span class="mx-2">/</span> </span>
                <p class="list-inline-item">Category : <a wire:navigate href="{{route('blog').'?categorySlug='.$article->category_slug}}" class="ml-1">{{$article->category_name}} </a>
                </p>

                <p class="list-inline-item">Author : {{$article->author}}
                </p>

              </div>
              <div class="mb-5 text-center">
                <div class="overflow-hidden rounded post-slider">
                    @if($article->image !== '')
                  <img loading="lazy" decoding="async" src="{{asset('/storage/'.$article->image)}}" alt="Post Thumbnail">
                    @endif
                </div>
              </div>
              <div class="content">
                 {!!$article->content!!}



              </div>
            </div>
          </div>
        </div>
      </div>
</main>
