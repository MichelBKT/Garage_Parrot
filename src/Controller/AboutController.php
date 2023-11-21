<?php

namespace App\Controller;

use App\Repository\TimetableRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AboutController extends AbstractController
{
    #[Route('/about/', name: 'app_about')]
    public function index(TimetableRepository $timetableRepository): Response
    {
        return $this->render('about/index.html.twig', [
            'timetables' => $timetableRepository->findAll(),
        ]);
    }
}
