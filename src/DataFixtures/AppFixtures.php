<?php

namespace App\DataFixtures;

use App\Entity\Event;
use DateTime;
use DateTimeImmutable;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use Faker\Provider\ConcertGroup;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create('fr_FR');
        $faker->addProvider(new ConcertGroup($faker));

        for ($i = 1; $i < 9; $i++) {
            $event = new Event();
            $event->setName($faker->groupName());
            $event->setDescription('Lorem Poue Pouet');
            $event->setPrice(rand(10,50));
            $event->setPublishedAt(new DateTimeImmutable('now'));
            $event->setDateStart( new DateTime('+ 1 day'));
            $event->setDateEnd(new DateTime('+ 3 days'));
            $event->setPicture('picture'.$i.'.jpg');
            $manager->persist($event);
        }

        $manager->flush();
    }
}
