<?php

namespace App\Repository;

use App\Entity\QuotationRequest;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method QuotationRequest|null find($id, $lockMode = null, $lockVersion = null)
 * @method QuotationRequest|null findOneBy(array $criteria, array $orderBy = null)
 * @method QuotationRequest[]    findAll()
 * @method QuotationRequest[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class QuotationRequestRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, QuotationRequest::class);
    }

    // /**
    //  * @return QuotationRequest[] Returns an array of QuotationRequest objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('q')
            ->andWhere('q.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('q.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?QuotationRequest
    {
        return $this->createQueryBuilder('q')
            ->andWhere('q.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
