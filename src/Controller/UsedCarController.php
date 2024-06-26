<?php

namespace App\Controller;

use App\Repository\AdvertRepository;
use App\Repository\TimetableRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UsedCarController extends AbstractController
{
    #[Route('/used/car/all', name: 'app_used_car')]
    public function index(TimetableRepository $timetableRepository, AdvertRepository $advertRepo,
                          PaginatorInterface $paginator, Request $request,
                          ParameterBagInterface $parameterBagInterface): Response
    {
        $filterMinPrice = $request->get('minPrice');
        $intMinPrice = (int)$filterMinPrice;
        $filterMaxPrice = $request->get('maxPrice');
        $intMaxPrice = (int)$filterMaxPrice;
        $filterMinKm = $request->get('minKm');
        $intMinKm = (int)$filterMinKm;
        $filterMaxKm = $request->get('maxKm');
        $intMaxKm = (int)$filterMaxKm;
        $filterMinCo2 = $request->get('minCo2');
        $intMinCo2 = (int)$filterMinCo2;
        $filterMaxCo2 = $request->get('maxCo2');
        $intMaxCo2 = (int)$filterMaxCo2;

        if ($request->get('ajax')) {
            $advert = $advertRepo->findAdvertsbyFilters($intMinPrice, $intMaxPrice, $intMinKm, $intMaxKm,
                                                        $intMinCo2, $intMaxCo2);
            return new JsonResponse([
                'content' => $this->renderView('partials/advert/_card.html.twig', [
                    'adverts' => $advert,
                    'price' => $advertRepo->findAdvertsbyFilters($intMinPrice, $intMaxPrice, $intMinKm, $intMaxKm,
                                                                 $intMinCo2, $intMaxCo2),
                ])
            ]);
        }
        $advert = $advertRepo->findBy([], ['created_at' => 'DESC']);
        $limit = $parameterBagInterface->get('used_car_limit');
        $advert = $paginator->paginate(
            $advert,
            $request->query->getInt('page', 1), $limit);
        $parameters = [
            'align' => 'right',
            'style' => 'bg-dark',
            'rounded' => true,
            'size' => 'small'
        ];
        $advert->setCustomParameters($parameters);

        return $this->render('used_car/index.html.twig', [
            'timetables' => $timetableRepository->findAll(),
            'adverts' => $advert,
            'ad' => $advertRepo->findAll(),
        ]);
    }  
}   
   