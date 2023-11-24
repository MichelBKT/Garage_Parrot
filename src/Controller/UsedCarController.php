<?php

namespace App\Controller;

use App\Form\FiltersType;
use App\Repository\AdvertRepository;
use App\Repository\TimetableRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UsedCarController extends AbstractController
{
    #[Route('/used/car', name: 'app_used_car')]
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
        $content= $request->getContent();
        if ($request->isXmlHttpRequest()) {
            if (!empty($content)) {
                $data = json_decode($content, true);
                $sql = "SELECT e FROM advert e WHERE e.price <= :price AND e.km <= :km AND e.co2_emission <= :co2_emission";
                $query = $em->createQuery($sql);
                $result = $query->execute([
                    'price' => $data['price'],
                    'km' => $data['km'],
                    'co2_emission' =>$data['co2_emission']
                ]);
                $json = $this->json($result);
                return $json;
            }
        }

        return $this->render('used_car/index.html.twig', [
            'form' => $form->createView(),
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
