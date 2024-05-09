<?php

namespace App\Controller;

use App\Repository\TimetableRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends AbstractController
{
    #[Route(path: '/login', name: 'app_login')]
    public function login(AuthenticationUtils $authenticationUtils, TimetableRepository $timetableRepository): Response
    {
        // if ($this->getUser()) {
         //    return $this->redirectToRoute('admin');
        // }

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('security/login.html.twig', [
            'timetables' => $timetableRepository->findAll(),
            'last_username' => $lastUsername, 
            'error' => $error
        ]);
    }

    #[Route(path: '/logout', name: 'app_logout')]
    public function someAction(Security $security, TimetableRepository $timetableRepository): Response
    {
        // you can also disable the csrf logout
        $response = $security->logout(false);

        // ... return $response (if set) or e.g. redirect to the homepage
       if (isset ($response)) {
            return $this->redirectToRoute('app_');
       }
        return $this->render('home/index.html.twig', [
            'timetables' => $timetableRepository->findAll(),
        ]);
    }
}
