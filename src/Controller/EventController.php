<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class EventController extends AbstractController
{
    #[Route('/event', name: 'app_event')]
    public function index(): Response
    {
        return $this->render('event/index.html.twig');
    }

    #[Route('/event/create', name: 'app_event_create')]
    public function create(): Response
    {
        return $this->render('event/create.html.twig');
    }

    #[Route('/event/{event}', name: 'app_event_show')]
    public function show(): Response
    {
        return $this->render('event/show.html.twig');
    }
}
