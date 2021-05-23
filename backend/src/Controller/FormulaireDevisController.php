<?php

namespace App\Controller;

use App\Entity\Devis;
use App\Form\DevisType;
use Symfony\Component\Mime\Email;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class FormulaireDevisController extends AbstractController
{
    /**
     * @Route("/formulaire/devis", name="formulaire_devis", methods={"GET","POST"})
     */
    public function index(Request $request, MailerInterface $mailer): Response
    {
        $devis=new Devis();
        $form = $this->createForm(DevisType::class, $devis);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($devis);
            $entityManager->flush();

            $user = $form->getData();
            $mail = (new Email())
                ->from($user->getEmail())
                ->to('philippe.mariou@colombbus.org')
                //->cc('cc@example.com')
                //->bcc('bcc@example.com')
                //->replyTo('fabien@example.com')
                //->priority(Email::PRIORITY_HIGH)
                ->subject('Nouvelle demande de devis')
                ->text('Sender : '.$user->getEmail().\PHP_EOL.$user->getMessage(),'text/plain')
                ->html('<p>See Twig integration for better HTML integration!</p>');
            $mailer->send($mail);
            
            return new Response("
            <html>
                <body>
                    <p>Le devis a bien été envoyé</p>  
                    <a href=\"/soutenance/backend/public/index/\">Retour</a>
                </body>
            </html>
            ");
        }

        return $this->render('pages/formulaire_devis.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
