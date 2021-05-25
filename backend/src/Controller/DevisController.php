<?php

namespace App\Controller;

use App\Entity\Brief;
use App\Entity\Devis;
use App\Form\BriefType;
use App\Form\DevisType;
use Symfony\Component\Mime\Email;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class DevisController extends AbstractController
{
    /**
     * @Route("/formulaire/devis", name="devis", methods={"GET","POST"})
     */
    public function index(Request $request, MailerInterface $mailer): Response
    {
        $devis=new Devis();
        $formDevis = $this->createForm(DevisType::class, $devis);
        $formDevis->handleRequest($request);

        if ($formDevis->isSubmitted() && $formDevis->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($devis);
            $entityManager->flush();

            $user = $formDevis->getData();
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

        $brief=new Brief();
        $formBrief = $this->createForm(BriefType::class, $brief);
        $formBrief->handleRequest($request);

        if ($formBrief->isSubmitted() && $formBrief->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($brief);
            $entityManager->flush();

            $user = $formBrief->getData();
            $mail = (new Email())
                ->from($user->getEmail())
                ->to('philippe.mariou@colombbus.org')
                //->cc('cc@example.com')
                //->bcc('bcc@example.com')
                //->replyTo('fabien@example.com')
                //->priority(Email::PRIORITY_HIGH)
                ->subject('Nouveau brief')
                ->text('Sender : '.$user->getEmail().\PHP_EOL.$user->getMessage(),'text/plain')
                ->html('<p>See Twig integration for better HTML integration!</p>');
            $mailer->send($mail);
            
            return new Response("
            <html>
                <body>
                    <p>Le brief a bien été envoyé</p>  
                    <a href=\"/soutenance/backend/public/index/\">Retour</a>
                </body>
            </html>
            ");
        }

        return $this->render('pages/devis.html.twig', [
            'form1' => $formDevis->createView(),
            'form2' => $formBrief->createView(),
        ]);
    }
}
