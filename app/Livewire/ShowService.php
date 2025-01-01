<?php

namespace App\Livewire;

use App\Models\Service;
use Livewire\Component;

class ShowService extends Component
{
    public $ServiceSlug = null;

    public function mount($slug)
    {
      $this->ServiceSlug = $slug;
    }
    public function render()
    {
        $services = Service::where('slug',$this->ServiceSlug)->first();
        if($services == null) {
            abort(404);
        }
        return view('livewire.show-service', [
            'services' => $services
        ]);
    }
}