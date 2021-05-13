<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FormulaireContactController extends AbstractController
{
    /**
     * @Route("/formulaire/contact", name="formulaire_contact")
     */
    public function index(): Response
    {
        return $this->render('pages/formulaire_contact.html.twig', [
            'controller_name' => 'FormulaireContactController',
        ]);
    }
}
