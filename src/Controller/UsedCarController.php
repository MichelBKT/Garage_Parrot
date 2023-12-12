<?php

namespace App\Controller;

use App\Entity\Advert;
use App\Repository\AdvertRepository;
use App\Repository\TimetableRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Config\Definition\IntegerNode;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UsedCarController extends AbstractController
{
    #[Route('/used/car/all', name: 'app_used_car')]
    public function index(TimetableRepository $timetableRepository, AdvertRepository $advertRepo,  PaginatorInterface $paginator, Request $request, ParameterBagInterface $parameterBagInterface): Response
    {
        $filterMinPrice = $request->get('minPrice');
        $intMinPrice = (int)$filterMinPrice;
        $filterMaxPrice = $request->get('maxPrice');
        $intMaxPrice = (int)$filterMaxPrice;

        
        if($request->get('ajax')) {
            $advert = $advertRepo->findAdvertsbyPrice($intMinPrice, $intMaxPrice); 
            return new JsonResponse([
                'content' => $this->renderView('partials/advert/_card.html.twig', [
                    'adverts' => $advert,
                    'price' => $advertRepo->findAdvertsbyPrice($intMinPrice, $intMaxPrice),
                    ])
                ]);
            }  
            $advert = $advertRepo->findBy([], ['created_at' => 'DESC']);
            $limit = $parameterBagInterface->get('used_car_limit');
            $advert = $paginator->paginate(
                $advert,
                $request->query->getInt('page', 1), $limit);
            return $this->render('used_car/index.html.twig', [
                'timetables' => $timetableRepository->findAll(),
                'adverts' => $advert,
                'ad' => $advertRepo->findAll(),
                'pagination' => $advert->setCustomParameters([
                    'align' => 'right',
                    'style' => 'bg-dark',
                    'rounded' => true,
                    'size' => 'small'
                ])
            ]);
    }  
}   
   