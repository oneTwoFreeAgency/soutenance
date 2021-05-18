<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TalentsController extends AbstractController
{
    /**
     * @Route("/talents", name="talents")
     */
    public function index(): Response
    {
        return $this->render('pages/talents.html.twig', [
            'controller_name' => 'TalentsController',
        ]);
    }
}
