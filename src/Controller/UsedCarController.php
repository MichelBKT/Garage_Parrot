<?php

namespace App\Controller;

use App\Repository\AdvertRepository;
use App\Repository\TimetableRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UsedCarController extends AbstractController
{
    #[Route('/used/car', name: 'app_used_car')]
    public function index(TimetableRepository $timetableRepository, AdvertRepository $advertRepo,  PaginatorInterface $paginator, Request $request, ParameterBagInterface $parameterBagInterface): Response
    {
        $limit = $parameterBagInterface->get('used_car_limit');
        $advert = $advertRepo->findBy([], ['created_at' => 'DESC']);
           
        $advert = $paginator->paginate(
        $advert,
        $request->query->getInt('page', 1), $limit);

        return $this->render('used_car/index.html.twig', [
            'timetables' => $timetableRepository->findAll(),
            'adverts' => $advert,
            'pagination' => $advert->setCustomParameters([
                'align' => 'right',
                'style' => 'bg-dark',
                'rounded' => true,
            ]),
        ]);
    }
}
