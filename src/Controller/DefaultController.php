<?php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class DefaultController extends AbstractController
{
   //Devuelve todos los datos
    /**
    * @Route("/")
    */
    public function indexView()
    {
        return $this->render('base.php');
    }
    

}