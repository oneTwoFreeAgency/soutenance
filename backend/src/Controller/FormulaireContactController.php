<?php

namespace App\Controller;

use App\Entity\Contacts;
use App\Form\ContactType;
use Symfony\Component\Mime\Email;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
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
            
            // send mail
            /* $contactFormData = $form->getData();
            $message = (new Email())
                // ->from($contactFormData['email'])
                ->from($contactFormData->getEmail())
                ->to('philippe.mariou@colombbus.org')
                ->subject('vous avez reçu unn email')
                // ->text('Sender : '.$contactFormData['email'].\PHP_EOL.
                ->text('Sender : '.$contactFormData->getEmail().\PHP_EOL.
                    // $contactFormData['Message'],
                    $contactFormData->getMessage(),
                    'text/plain');
            $mailer->send($message); */

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

}
