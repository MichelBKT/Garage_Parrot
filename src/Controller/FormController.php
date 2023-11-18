<?php

namespace App\Controller;

use App\Entity\Comment;
use App\Entity\Contact;
use App\Form\CommentType;
use App\Repository\AdvertRepository;
use App\Repository\CommentRepository;
use App\Repository\ContactRepository;
use App\Repository\TimetableRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FormController extends AbstractController
{
    #[Route('/form', name: 'app_form')]
    public function index(TimetableRepository $timetableRepository, AdvertRepository $advertRepo, CommentRepository $commentRepository, ContactRepository $contactRepo, Request $request, EntityManagerInterface $em): Response
    {
        $advertRepo = $advertRepo->findBy([], ['created_at' => 'asc']);
        $contactRepo = $contactRepo->findBy([]);

        $contact = new Contact();
        $formView = $this->createForm(ContactType::class, $contact);
        $formView->handleRequest($request);
        if($formView->isSubmitted() && $formView->isValid()) {
          $em->persist($contact);
          $em->flush();
          $this->addFlash('success', '<strong>Message envoyé avec succès!</strong>');
        }

        return $this->render('home/form_contact.html.twig', [
            'formView' => $formView->createView(),
            'adverts' => $advertRepo,
            'timetables' => $timetableRepository->findAll(),
            'comments'=> $commentRepository->findAll(),
        ]);
    }
}
