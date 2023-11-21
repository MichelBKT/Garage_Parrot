<?php

namespace App\Controller;

use App\Entity\Advert;
use App\Entity\Contact;
use App\Repository\AdvertRepository;
use App\Repository\CommentRepository;
use App\Repository\ContactRepository;
use App\Repository\TimetableRepository;
use Doctrine\ORM\EntityManagerInterface;
use PHPMailer\PHPMailer\PHPMailer;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FormController extends AbstractController
{
    #[Route('/form', name: 'app_form')]
    public function index(TimetableRepository $timetableRepository, AdvertRepository $advertRepo, CommentRepository $commentRepository, ContactRepository $contactRepo, Request $request, EntityManagerInterface $em): Response
    {
        $advertRepo = $advertRepo->findBy([], ['created_at' => 'asc']);
        $contactRepo = $contactRepo-> findAll();

        $contact = new Contact();
        $formView = $this->createForm(ContactType::class, $contact);
        $formView->handleRequest($request);
        if($formView->isSubmitted() && $formView->isValid()) {
            $email = $contact->getEmail();
            $lastName = $contact->getLastName();
            $firstName = $contact->getFirstName();
            $object = $contact->getobject();
            $subject = $contact->getSubject();

            $phpmailer = new PHPMailer(true);
            $phpmailer->isSMTP();
            $phpmailer->Host = 'sandbox.smtp.mailtrap.io';
            $phpmailer->SMTPAuth = true;
            $phpmailer->Port = 2525;
            $phpmailer->Username = '43ac6b1ed0c920';
            $phpmailer->Password = 'e8274b3c0028cb';
            $phpmailer->CharSet = 'UTF-8';
            
            $phpmailer->setFrom($email, $lastName. ' ' .$firstName); 
            $phpmailer->addAddress('vparrot@parrot.fr', 'Vincent Parrot');
            $phpmailer->Subject = ($object);
            $phpmailer->isHTML(true);
            $format = '%s %s a écrit : %s';
            $phpmailer->Body = sprintf($format, $firstName, $lastName, $subject);
            
            $phpmailer->send();

          $em->persist($contact);
          $em->flush();
          $this->addFlash('success', '<strong>Message envoyé avec succès!</strong>');
        }

        return $this->render('home/form_contact.html.twig', [
            'formView' => $formView->createView(),
            'adverts' => $advertRepo,
            'timetables' => $timetableRepository->findAll(),
            'comments'=> $commentRepository->findAll(),
        ]);
    }
    #[Route('/form/{id}', name: 'app_form_id',  requirements: ['id' => '\d+'], methods: ['GET', 'POST'])]
    public function showTitle(TimetableRepository $timetableRepository, Advert $advert, CommentRepository $commentRepository, ContactRepository $contactRepo, Request $request, EntityManagerInterface $em): Response
    {
        $advertRepo = $advert;
        $contactRepo = $contactRepo-> findAll();

        $contact = new Contact();
        $formView = $this->createForm(ContactType::class, $contact);
        $formView->handleRequest($request);
        if($formView->isSubmitted() && $formView->isValid()) {
            $email = $contact->getEmail();
            $lastName = $contact->getLastName();
            $firstName = $contact->getFirstName();
            $object = $contact->getobject();
            $subject = $contact->getSubject();

            $phpmailer = new PHPMailer(true);
            $phpmailer->isSMTP();
            $phpmailer->Host = 'sandbox.smtp.mailtrap.io';
            $phpmailer->SMTPAuth = true;
            $phpmailer->Port = 2525;
            $phpmailer->Username = '43ac6b1ed0c920';
            $phpmailer->Password = 'e8274b3c0028cb';
            $phpmailer->CharSet = 'UTF-8';
            
            $phpmailer->setFrom($email, $lastName. ' ' .$firstName); 
            $phpmailer->addAddress('vparrot@parrot.fr', 'Vincent Parrot');
            $phpmailer->Subject = ($object);
            $phpmailer->isHTML(true);
            $format = '%s %s a écrit : %s';
            $phpmailer->Body = sprintf($format, $firstName, $lastName, $subject);
            
            $phpmailer->send();  
            $em->persist($contact);
            $em->flush();
            $this->addFlash('success', '<strong>Message envoyé avec succès!</strong>');
        }

        return $this->render('home/form_contact.html.twig', [
            'formView' => $formView->createView(),
            'adverts' => $advertRepo,
            'timetables' => $timetableRepository->findAll(),
            'comments'=> $commentRepository->findAll(),
        ]);
    }
}
