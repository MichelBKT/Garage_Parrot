<?php

namespace App\Controller\Users;

use App\Repository\TimetableRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UsersController extends AbstractController
{
    #[Route('/user', name: 'app_user')]
    public function index(TimetableRepository $timetableRepository): Response
    {
        return $this->render('users/dashboard.html.twig', [
            'timetables' => $timetableRepository->findAll(),
        ]);
    }
}
