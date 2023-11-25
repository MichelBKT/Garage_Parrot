<?php

namespace App\Controller;

use App\Entity\Advert;
use App\Form\FiltersType;
use App\Repository\AdvertRepository;
use App\Repository\TimetableRepository;
use ContainerJOZVnxr\getPaginationRuntimeService;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UsedCarController extends AbstractController
{
    #[Route('/used/car/all', name: 'app_used_car')]
    public function index(TimetableRepository $timetableRepository, AdvertRepository $advertRepo,  PaginatorInterface $paginator, Request $request, ParameterBagInterface $parameterBagInterface, EntityManagerInterface $em): Response
    {
        //Gestion de la pagination

        $limit = $parameterBagInterface->get('used_car_limit');
        $advert = $advertRepo->findBy([], ['created_at' => 'DESC']);
           
        $advert = $paginator->paginate(
        $advert,
        $request->query->getInt('page', 1), $limit);

        //Gestion des filtres

        $form = $this->createForm(FiltersType::class);
        $content = $request->getContent();
        if ($request->isXmlHttpRequest()) {
            if (!empty($content)) {
                dump($content);
                //$data = json_decode($content, true);
                
            //$resultats = $advertRepo->findBySomeField($price, $km, $co2);}
           // $json = $this->json($resultats);
           // return $json;
        }
            
            return $this->render('used_car/index.html.twig', [
                'form' => $form->createView(),
                'timetables' => $timetableRepository->findAll(),
                'adverts' => $advert,
                'pagination' => $advert->setCustomParameters([
                    'align' => 'right',
                    'style' => 'bg-dark',
                    'rounded' => true,
                ])
            ]);
        } 
    }  
}            
            
