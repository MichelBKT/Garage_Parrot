<?php

namespace App\Repository;

use App\Entity\Advert;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Query\Parameter;
use Doctrine\Persistence\ManagerRegistry;

/**
 @extends ServiceEntityRepository<Advert>
 *
 * @method Advert|null find($id, $lockMode = null, $lockVersion = null)
 * @method Advert|null findOneBy(array $criteria, array $orderBy = null)
 * @method Advert[]    findAll()
  @method Advert[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AdvertRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Advert::class);
    }

   /**
     * @return Advert[] Returns an array of Advert objects
    */
    public function findAdvertsbyFilters($intMinPrice = null, $intMaxPrice = null, $intMinKm = null, $intMaxKm = null, $intMinCo2 = null, $intMaxCo2 = null): array
    {
        $queryBuilder = $this->createQueryBuilder('a');

        if ($intMinPrice != null | $intMaxPrice != null | $intMinKm != null | $intMaxKm != null | $intMinCo2 != null | $intMaxCo2 != null ){
            $queryBuilder   ->where('a.price >= :intMinPrice', 'a.price <= :intMaxPrice', 'a.km >= :intMinKm', 'a.km <= :intMaxKm', 'a.co2_emission >= :intMinCo2', 'a.co2_emission <= :intMaxCo2')
                            ->setParameters(new ArrayCollection([
                                new Parameter('intMinPrice', $intMinPrice),
                                new Parameter('intMaxPrice', $intMaxPrice),
                                new Parameter('intMinKm', $intMinKm),
                                new Parameter('intMaxKm', $intMaxKm),
                                new Parameter('intMinCo2', $intMinCo2),
                                new Parameter('intMaxCo2', $intMaxCo2)

                            ]));
        }
        return $queryBuilder->getQuery()->getResult();
    }
        
    
 


//    public function findOneBySomeField($value): ?Advert
//    {
//        return $this->createQueryBuilder('a')
//            ->andWhere('a.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
