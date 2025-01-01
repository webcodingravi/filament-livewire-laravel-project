<?php

namespace App\Livewire;

use App\Models\Page;
use Livewire\Component;

class ShowPage extends Component
{
    public $pageSlug = null;

    public function mount($slug) {
      $this->pageSlug = $slug;
    }
    public function render()
    {
        $page = Page::where('slug',$this->pageSlug)->first();
        if($page == null) {
            abort(404);
        }
        return view('livewire.show-page',[
           'page' => $page
        ]);
    }
}