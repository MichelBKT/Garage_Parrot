<?php

namespace App\Controller;

use App\Entity\Timetable;
use App\Repository\AdvertRepository;
use App\Repository\CommentRepository;
use App\Repository\TimetableRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PageController extends AbstractController
{
    #[Route('/', name: 'app_')]
    public function index(TimetableRepository $timetableRepository, AdvertRepository $advertRepository, CommentRepository $commentRepository): Response
    {             
        return $this->render('page/index.html.twig', [
            'adverts' => $advertRepository->findAll(),
            'timetables' => $timetableRepository->findAll(),
            'comments'=> $commentRepository->findAll(),
        ]);
    }
}
