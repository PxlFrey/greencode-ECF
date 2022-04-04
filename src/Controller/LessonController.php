<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Lesson;
use App\Repository\CategoryRepository;
use App\Repository\LessonRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;


class LessonController extends AbstractController
{
    #[Route('/lesson/{slug}', name: 'lesson')]

    public function show(?Lesson $lesson, CategoryRepository $categoryRepository) : Response
    {
        if (!$lesson) {
            return $this->redirectToRoute('home');
        }
        return $this->render('lesson/show_lesson.html.twig', [
            'lesson' => $lesson,
       ]);
    }
}
