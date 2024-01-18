<?php

namespace App\Controller;

use App\Repository\MaintenanceRepository;
use App\Repository\ServiceRepository;
use App\Repository\TimetableRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MaintenanceAndServiceController extends AbstractController
{
    #[Route('/maintenanceandservice', name: 'app_maintenance_service')]
    public function index(TimetableRepository $timetableRepository, MaintenanceRepository $maintenanceRepository,
                          ServiceRepository $serviceRepository): Response
    {
        return $this->render('maintenance_service/index.html.twig', [
            'maintenances' => $maintenanceRepository->findAll(),
            'services' => $serviceRepository->findAll(),
            'timetables' => $timetableRepository->findAll(),
        ]);
    }
}
