<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Contact;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Contact>
 */
class ContactFactory extends Factory
{
    protected $model = Contact::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $first_name = $this->faker->firstName();
        $last_name = $this->faker->lastName();
        return [
            'id' => $this->faker->uuid(),
            'first_name' => $first_name,
            'last_name' => $last_name,
            'email' =>$first_name.$last_name.'@company.com',
            'phone' => ''.$this->faker->phoneNumber(),
        ];
    }
}
