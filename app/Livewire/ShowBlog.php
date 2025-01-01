<?php

namespace App\Livewire;

use App\Models\Article;
use Livewire\Component;
use App\Models\Category;
use Livewire\Attributes\Url;


class ShowBlog extends Component
{

   #[Url]
    public $categorySlug = null;


    public function render()
    {
        $categories = Category::all();
        $paginate = 10;
        if(!empty($this->categorySlug)) {
            $category = Category::where('slug',$this->categorySlug)->first();

            if(empty($category)) {
                abort(404);
            }

             $articles = Article::orderBy('created_at','desc')
            ->where(['category_id' => $category->id, 'status' => 1])
             ->where('status',1)
            ->paginate($paginate);
        }else{
            $articles = Article::orderBy('created_at','desc')
            ->where('status',1)
            ->paginate($paginate);
        }

        $latestArticles = Article::orderBy('created_at','desc')
        ->where('status',1)
        ->take(3)
        ->get();

        return view('livewire.show-blog',[
               'articles' => $articles,
                'categories' => $categories,
                'latestArticles' => $latestArticles
        ]);
    }

    public function paginationView()
    {
        return 'livewire._custom-pagination-links-view';
    }
}