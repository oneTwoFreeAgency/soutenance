<?php

namespace App\Controller;

use App\Entity\Contacts;
use App\Form\ContactType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class FormulaireContactController extends AbstractController
{
    /**
     * @Route("/formulaire/contact", name="formulaire_contact", methods={"GET","POST"})
     */
    public function index(Request $request): Response
    {
        $contact=new Contacts();
        $form = $this->createForm(ContactType::class, $contact);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($contact);
            $entityManager->flush();

            //return $this->redirectToRoute('contact_success');
            return new Response("
            <html>
                <body>
                    <p>Le message a bien été envoyé</p>  
                    <a href=/>Retour</a>
                </body>
            </html>
            ");
        }

        return $this->render('pages/formulaire_contact.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/formulaire/contact/success", name="contact_success")
     */
    /* public function success() {
        return new Response("
        <html>
            <body>
                <p>Les données ont été traitées</p>  
                <a href=/>Retour</a>
            </body>
        </html>
        ");
    } */
}
