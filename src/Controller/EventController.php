<?php

namespace App\Controller;

use App\Entity\Event;
use App\Form\EventType;
use App\Repository\EventRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Validator\Validator\ValidatorInterface;

class EventController extends AbstractController
{
    #[Route('/event', name: 'app_event')]
    public function index(Request $request, EventRepository $repository, ValidatorInterface $validator): Response
    {
        
        return $this->render('event/index.html.twig', [
            'events' => $repository->findAll(),
        ]);
    }

    #[Route('/event/create', name: 'app_event_create')]
    public function create(Request $request, EntityManagerInterface $entityManager): Response
    {
        $event = new Event();
        $form = $this->createForm(EventType::class, $event);
        
        return $this->render('event/create.html.twig');
    }

    #[Route('/event/{id}', name: 'app_event_show')]
    public function show($id): Response
    {
        return $this->render('event/show.html.twig');
    }
}
