<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class LessonController extends AbstractController
{
    #[Route('/lesson/{slug}', name: 'lesson_show')]
    public function show(): Response
    {
        return $this->render('lesson/show.html.twig', [
            'controller_name' => 'LessonController',
        ]);
    }
}
