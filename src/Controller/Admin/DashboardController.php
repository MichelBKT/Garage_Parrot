<?php

namespace App\Controller\Admin;

use App\Entity\Advert;
use App\Entity\Comment;
use App\Entity\Contact;
use App\Entity\Maintenance;
use App\Entity\Service;
use App\Entity\Timetable;
use App\Entity\User;
use App\Entity\Workplace;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
        return $this->render('admin/dashboard.html.twig');

        // Option 1. You can make your dashboard redirect to some common page of your backend
        //
        // $adminUrlGenerator = $this->container->get(AdminUrlGenerator::class);
        // return $this->redirect($adminUrlGenerator->setController(OneOfYourCrudController::class)->generateUrl());

        // Option 2. You can make your dashboard redirect to different pages depending on the user
        //
        // if ('jane' === $this->getUser()->getUsername()) {
        //     return $this->redirect('...');
        // }

        // Option 3. You can render some custom template to display a proper dashboard with widgets, etc.
        // (tip: it's easier if your template extends from @EasyAdmin/page/content.html.twig)
        //
        // return $this->render('some/path/my-dashboard.html.twig');
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Parrot Garage');
            
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linkToDashboard('Home', 'fa fa-home');
        yield MenuItem::linkToCrud('Messagerie', 'fa-solid fa-envelope', Contact::class);
        yield MenuItem::linkToCrud('Postes de travail', 'fa-solid fa-briefcase', Workplace::class);
        yield MenuItem::linkToCrud('Utilisateurs', 'fa-solid fa-users', User::class);
        yield MenuItem::linkToCrud('Entretiens', 'fa-solid fa-wrench', Maintenance::class);
        yield MenuItem::linkToCrud('Services', 'fa-solid fa-screwdriver-wrench', Service::class);
        yield MenuItem::linkToCrud('Commentaires', 'fa-solid fa-comments', Comment::class);
        yield MenuItem::linkToCrud('Horaires d\'ouverture', 'fa-solid fa-door-open', Timetable::class);
        yield MenuItem::linkToCrud('Annonces', 'fa-solid fa-rectangle-ad', Advert::class);
    }
}
