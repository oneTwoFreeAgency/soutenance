<?php

namespace App\Controller;

use App\Entity\Brief;
use App\Form\BriefType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class FormulaireBriefController extends AbstractController
{
    /**
     * @Route("/formulaire/brief", name="formulaire_brief")
     */
    public function index(Request $request): Response
    {
        $brief=new Brief();
        $form = $this->createForm(BriefType::class, $brief);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($brief);
            $entityManager->flush();
            
            return new Response("
            <html>
                <body>
                    <p>Le brief a bien été envoyé</p>  
                    <a href=/>Retour</a>
                </body>
            </html>
            ");
        }

        return $this->render('pages/formulaire_brief.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
