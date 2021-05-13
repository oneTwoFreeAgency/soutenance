<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FormulaireDevisController extends AbstractController
{
    /**
     * @Route("/formulaire/devis", name="formulaire_devis")
     */
    public function index(): Response
    {
        return $this->render('pages/formulaire_devis.html.twig', [
            'controller_name' => 'FormulaireDevisController',
        ]);
    }
}
