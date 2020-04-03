<?php
namespace App\Controller;

use App\Entity\Material;
use App\Repository\MaterialRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class MaterialController extends ApiController
{
   //Devuelve todos los datos
    /**
    * @Route("/material", methods="GET")
    */
    public function indexApi(MaterialRepository $materialRepository)
    {
        $materiales = $materialRepository->transformAll();

        return $this->respond($materiales);
    }
    

}