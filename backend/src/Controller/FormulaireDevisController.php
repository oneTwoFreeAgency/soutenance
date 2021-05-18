<?php

namespace App\Controller;

use App\Entity\Devis;
use App\Form\DevisType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class FormulaireDevisController extends AbstractController
{
    /**
     * @Route("/formulaire/devis", name="formulaire_devis", methods={"GET","POST"})
     */
    public function index(Request $request): Response
    {
        $devis=new Devis();
        $form = $this->createForm(DevisType::class, $devis);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($devis);
            $entityManager->flush();
            
            return new Response("
            <html>
                <body>
                    <p>Le devis a bien été envoyé</p>  
                    <a href=/>Retour</a>
                </body>
            </html>
            ");
        }

        return $this->render('pages/formulaire_devis.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
