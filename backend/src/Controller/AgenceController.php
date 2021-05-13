<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AgenceController extends AbstractController
{
    /**
     * @Route("/agence", name="agence")
     */
    public function index(): Response
    {
        return $this->render('pages/agence.html.twig', [
            'controller_name' => 'AgenceController',
        ]);
    }
}
