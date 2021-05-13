<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FormulaireBriefController extends AbstractController
{
    /**
     * @Route("/formulaire/brief", name="formulaire_brief")
     */
    public function index(): Response
    {
        return $this->render('pages/formulaire_brief.html.twig', [
            'controller_name' => 'FormulaireBriefController',
        ]);
    }
}
