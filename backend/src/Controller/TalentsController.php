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

            $user = $formConcours->getData();
            $url =  './uploads/images/products/' . $user->getDocument();
            $mail = (new Email())
                ->from($user->getEmail())
                ->to('philippe.mariou@colombbus.org')
                //->cc('cc@example.com')
                //->bcc('bcc@example.com')
                //->replyTo('fabien@example.com')
                //->priority(Email::PRIORITY_HIGH)
                ->subject('Nouveau créatif !')
                ->text('Sender : '.$user->getEmail().\PHP_EOL.$user->getMessage(),'text/plain')
                ->html('<p>See Twig integration for better HTML integration!</p>')
                ->attachFromPath($url)
                ;
            $mailer->send($mail);
            
            $url = $this->generateUrl('index');
            return new Response("
            <html>
                <body>
                    <p>Le message a bien été envoyé</p>  
                    <a href=\"$url\">Retour</a>
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

            $user = $formCandidat->getData();
            $url =  './uploads/images/products/' . $user->getDocument();
            $mail = (new Email())
                ->from($user->getEmail())
                ->to('philippe.mariou@colombbus.org')
                //->cc('cc@example.com')
                //->bcc('bcc@example.com')
                //->replyTo('fabien@example.com')
                //->priority(Email::PRIORITY_HIGH)
                ->subject('Nouveau candidat !')
                ->text('Sender : '.$user->getEmail().\PHP_EOL.$user->getMessage(),'text/plain')
                ->html('<p>See Twig integration for better HTML integration!</p>')
                ->attachFromPath($url)
                ;
            $mailer->send($mail);
            
            $url = $this->generateUrl('index');
            return new Response("
            <html>
                <body>
                    <p>Le message a bien été envoyé</p>  
                    <a href=\"$url\">Retour</a>
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
