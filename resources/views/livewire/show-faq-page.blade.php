 <main>
    <section class="section">
        <div class="container">
          <div class="mb-5 row justify-content-center">
            <div class="col-lg-6">
              <div class="text-center section-title">
                <p class="mb-3 text-primary text-uppercase fw-bold">Frequient Questions</p>
                <h1>Frequently Asked Questions</h1>
              </div>
            </div>
          </div>
          <div class="row justify-content-center">
            <div class="col-lg-9">
              <div class="accordion accordion-border-bottom" id="accordionFAQ">
                @if ($faqs->isNotEmpty())
                @php
                    $x = 1;
                @endphp
                @foreach ($faqs as $faq)
                <div class="accordion-item">
                  <h2 class="border-0 accordion-header accordion-button h5"
                    id="heading-{{$x}}" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapse-{{$x}}" aria-expanded="true"
                    aria-controls="collapse-{{$x}}">
                   {{$faq->question}}
                  </h2>
                  <div id="collapse-{{$x}}"
                    class="border-0 accordion-collapse collapse"
                    aria-labelledby="heading-{{$x}}" data-bs-parent="#accordionFAQ">
                    <div class="py-0 accordion-body content">{!!$faq->answer!!}</div>
                  </div>
                </div>
                @php
                $x++;
            @endphp
                @endforeach


                @endif



              </div>
            </div>
          </div>
        </div>
      </section>
 </main>
