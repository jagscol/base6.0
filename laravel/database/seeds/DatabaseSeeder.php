<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        App\User::create([
            'name'=>'jagscol',
            'email'=>'ingandresgrajales@gmail.com',
            'password'=> bcrypt('password') ,

        ]);

        factory(App\Post::class, 24)->create();
    }
}
