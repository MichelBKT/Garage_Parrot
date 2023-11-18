<?php

namespace App\Controller;

use App\Entity\Comment;
use App\Form\CommentType;
use App\Repository\AdvertRepository;
use App\Repository\CommentRepository;
use App\Repository\TimetableRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PageController extends AbstractController
{
    #[Route('/', name: 'app_', methods: ['GET', 'POST'])]
    public function index(TimetableRepository $timetableRepository, AdvertRepository $advertRepo, CommentRepository $commentRepository, Request $request, EntityManagerInterface $em): Response
    {       
        $advertRepo = $advertRepo->findBy([], ['created_at' => 'asc']);

        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()) {
          $em->persist($comment);
          $em->flush();
          $this->addFlash('success', "<strong>Commentaire envoyé avec succès</strong> </br> Il sera visible après modération.");
        }

        return $this->render('home/index.html.twig', [
            'form'=> $form->createView(),
            'adverts' => $advertRepo,
            'timetables' => $timetableRepository->findAll(),
            'comments'=> $commentRepository->findAll(),
        ]);
    }
}
