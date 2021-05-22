<?php

namespace App\Controller;

use App\Entity\Concours;
use App\Entity\Candidats;
use App\Form\CandidatType;
use App\Form\ConcoursType;
use Symfony\Component\Mime\Email;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class TalentsController extends AbstractController
{
    /**
     * @Route("/talents", name="talents")
     */
    public function index(Request $request, MailerInterface $mailer): Response
    {
        $concours=new Concours();
        $formConcours = $this->createForm(ConcoursType::class, $concours);
        $formConcours->handleRequest($request);

        if ($formConcours->isSubmitted() && $formConcours->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($concours);
            $entityManager->flush();

            $contact = $formConcours->getData();
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

        $candidat=new Candidats();
        $formCandidat = $this->createForm(CandidatType::class, $candidat);
        $formCandidat->handleRequest($request);

        if ($formCandidat->isSubmitted() && $formCandidat->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($candidat);
            $entityManager->flush();

            $contact = $formCandidat->getData();
            $mail = (new Email())
                ->from($contact->getEmail())
                ->to('philippe.mariou@colombbus.org')
                //->cc('cc@example.com')
                //->bcc('bcc@example.com')
                //->replyTo('fabien@example.com')
                //->priority(Email::PRIORITY_HIGH)
                ->subject('Nouveau candidat !')
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

        return $this->render('pages/talents.html.twig', [
            'form1' => $formConcours->createView(),
            'form2' => $formCandidat->createView(),
        ]);
    }
}
