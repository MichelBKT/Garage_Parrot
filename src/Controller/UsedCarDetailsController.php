<?php

namespace App\Controller;

use App\Entity\Advert;
use App\Repository\TimetableRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UsedCarDetailsController extends AbstractController
{
    #[Route('/usedcar/details/{id}', name: 'app_used_car_details',requirements: ['id' => '\d+'], methods: ['GET'])]
    public function index(TimetableRepository $timetableRepository, Advert $advert): Response
    { 
  

        return $this->render('used_car_details/index.html.twig', [
            'advert' => $advert,
            'timetables' => $timetableRepository->findAll(),
        ]);
    }
}
