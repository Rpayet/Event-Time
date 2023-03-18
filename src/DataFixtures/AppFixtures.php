<?php

namespace App\DataFixtures;

use App\Entity\Event;
use DateTime;
use DateTimeImmutable;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        for ($i = 0; $i < 8; $i++) {
            $event = new Event();
            $event->setName('Concert '. $i);
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
