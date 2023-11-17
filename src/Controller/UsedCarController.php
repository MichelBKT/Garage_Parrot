<?php

namespace App\Controller;


use App\Repository\AdvertRepository;
use App\Repository\TimetableRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UsedCarController extends AbstractController
{
    #[Route('/used/car', name: 'app_used_car')]
    public function index(TimetableRepository $timetableRepository, AdvertRepository $advertRepo): Response
    {
        $advertRepo = $advertRepo->findBy([], ['created_at' => 'DESC']);

        return $this->render('used_car/index.html.twig', [
            'adverts' => $advertRepo,
            'timetables' => $timetableRepository->findAll(),
        ]);
    }
}
