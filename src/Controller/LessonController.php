<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Lesson;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class LessonController extends AbstractController
{

    #[Route('/lesson/{slug}', name: 'lesson')]

    public function show(?Lesson $lesson) : Response
    {

        if (!$lesson) {
            return $this->redirectToRoute('home');
        }
        return $this->render('lesson/show_lesson.html.twig', [
            'lesson' => $lesson,
        ]);
    }
}
