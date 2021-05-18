<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class WorksController extends AbstractController
{
    /**
     * @Route("/works", name="works")
     */
    public function index(): Response
    {
        return $this->render('pages/works.html.twig', [
            'controller_name' => 'WorksController',
        ]);
    }
}
