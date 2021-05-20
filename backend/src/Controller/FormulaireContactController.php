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
    public function index(Request $request, MailerInterface $mailer): Response
    {
        $contact=new Contacts();
        $form = $this->createForm(ContactType::class, $contact);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($contact);
            $entityManager->flush();
            
            $contact = $form->getData();
            $mail = (new Email())
                ->from($contact->getEmail())
                ->to('regis.leloup@10mentionweb.org')
                //->cc('cc@example.com')
                //->bcc('bcc@example.com')
                //->replyTo('fabien@example.com')
                //->priority(Email::PRIORITY_HIGH)
                ->subject('Nouvelle demande de contact')
                ->text('Sender : '.$contact->getEmail().\PHP_EOL.$contact->getMessage(),'text/plain')
                ->html('<p>See Twig integration for better HTML integration!</p>');
            $mailer->send($mail);

           
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