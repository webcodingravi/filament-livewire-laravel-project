<?php

namespace App\Livewire;

use App\Models\Article;
use Livewire\Component;
use App\Models\Category;
use Livewire\Attributes\Url;

class BlogDetail extends Component
{

    public $blogSlug = null;
    public function mount($slug) {
     $this->blogSlug = $slug;
    }

    public function render()
    {
         $article = Article::select('articles.*','categories.name as category_name', 'categories.slug as category_slug')
         ->leftJoin('categories','categories.id','articles.category_id')
         ->where('articles.slug',$this->blogSlug)->first();
         if(empty($article)) {
           abort(404);
         }

        return view('livewire.blog-detail',[
            'article' => $article,


        ]);
    }
}