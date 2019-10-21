<?php


use Phinx\Seed\AbstractSeed;

class StudioFitnesSeeder extends AbstractSeed
{
    /**
     * Run Method.
     *
     * Write your database seeder using this method.
     *
     * More information on writing seeders is available here:
     * http://docs.phinx.org/en/latest/seeding.html
     */
    public function run()
    {
        $faker = Faker\Factory::create();
        $data = [];
        for ($i = 0; $i < 10; $i++) {
            $data[] = [
                'name'          => $faker->name,
                'address'       => $faker->address,
                'price'         => $faker->randomNumber(2),
                'duration'      => $faker->randomDigit,
                'created'       => date('Y-m-d H:i:s'),
                'updated'       => date('Y-m-d H:i:s'),
            ];
        }

        $this->insert('studio_fitness', $data);
    }
}
