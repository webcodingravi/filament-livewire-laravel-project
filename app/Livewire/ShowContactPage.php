<?php

namespace App\Livewire;

use App\Models\Contact;
use Livewire\Component;
use App\Mail\ContactEmail;
use Illuminate\Support\Facades\Mail;

class ShowContactPage extends Component
{
    public $name = "";
    public $email = "";
    public $message = "";

    protected $rules = [
        'name' => 'required|max:40',
        'email' => 'required|email',
    ];


    public function submit() {
       $this->validate();
       $mailData = [
          'subject' => 'You have received a contact Email.',
           'name' => $this->name,
           'email' => $this->email,
           'message' => $this->message
       ];

       Mail::to('ravi@gmail.com')->send(new ContactEmail($mailData));
       session()->flash('success','Thanks for contacting us, we will get back to you soon.');
       $this->redirect('/contact');
    }

    public function render()
    {
        $contactDetails = Contact::first();
        return view('livewire.show-contact-page',[
            'contactDetails' => $contactDetails
        ]);


}
}