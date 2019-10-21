<?php


use Phinx\Seed\AbstractSeed;

class BookingSeeder extends AbstractSeed
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
                'date'      => $faker->date('Y-m-d H:i:s'),
                'studio_id'     => $faker->uuid,
                'users_id'      => $faker->uuid,
                'created'       => date('Y-m-d H:i:s'),
                'updated'       => date('Y-m-d H:i:s'),
            ];
        }

        $this->insert('booking_class', $data);
    }
}
