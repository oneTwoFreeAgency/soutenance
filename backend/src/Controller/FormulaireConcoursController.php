<?php

namespace App\Controller;

use App\Entity\Concours;
use App\Form\ConcoursType;
use Symfony\Component\Mime\Email;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class FormulaireConcoursController extends AbstractController
{
    /**
     * @Route("/formulaire/concours", name="formulaire_concours")
     */
    public function index(Request $request, MailerInterface $mailer): Response
    {
        $concours=new Concours();
        $form = $this->createForm(ConcoursType::class, $concours);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($concours);
            $entityManager->flush();

            $contact = $form->getData();
            $mail = (new Email())
                ->from($contact->getEmail())
                ->to('philippe.mariou@colombbus.org')
                //->cc('cc@example.com')
                //->bcc('bcc@example.com')
                //->replyTo('fabien@example.com')
                //->priority(Email::PRIORITY_HIGH)
                ->subject('Nouveau créatif !')
                ->text('Sender : '.$contact->getEmail().\PHP_EOL.$contact->getMessage(),'text/plain')
                ->html('<p>See Twig integration for better HTML integration!</p>');
            $mailer->send($mail);
            
            return new Response("
            <html>
                <body>
                    <p>Le message a bien été envoyé</p>  
                    <a href=\"/soutenance/backend/public/index/\">Retour</a>
                </body>
            </html>
            ");
        }

        return $this->render('pages/formulaire_concours.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
