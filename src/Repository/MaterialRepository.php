<?php

namespace App\Repository;

use App\Entity\Material;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Material|null find($id, $lockMode = null, $lockVersion = null)
 * @method Material|null findOneBy(array $criteria, array $orderBy = null)
 * @method Material[]    findAll()
 * @method Material[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MaterialRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Material::class);
    }

    public function transform(Material $material)
    {
        return [
                'id'    => (int) $material->getId(),
                'grupo' => (string) $material->getGrupo(),
                'material' => (string) $material->getMaterial(),
                'marca' => (string) $material->getMarca(),
                'venta_mes' => (int) $material->getVentaMes(),
                'mes' => (string) $material->getMes(),
                'precio_compra' => (float) $material->getPrecioCompra(),
                'precio_venta' => (float) $material->getPrecioVenta(),
                'esVisible' => (bool) true,
                'utilidad' => (float) $material->getPrecioVenta()-$material->getPrecioCompra(),
        ];
    }
    
    public function transformAll()
    {
        $materiales = $this->findAll();
        $materialesArray = [];
    
        foreach ($materiales as $material) {
            $materialesArray[] = $this->transform($material);
        }
    
        return $materialesArray;
    }

    // /**
    //  * @return Material[] Returns an array of Material objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('m.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Material
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
