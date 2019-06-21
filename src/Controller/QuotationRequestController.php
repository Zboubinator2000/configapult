<?php
/**
 * Created by PhpStorm.
 * User: Vincent
 * Date: 20/06/2019
 * Time: 19:37
 */

namespace App\Controller;

use FOS\RestBundle\View\View;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;


class QuotationRequestController extends AbstractController
{
    /**
     * @Route("/ttrs", name="ttrs")
     */
    public function home()
    {
        echo "je roule dans un ttrs";
    }
}