<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Lesson;
use App\Repository\CategoryRepository;
use App\Repository\LessonRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CategoryController extends AbstractController
{
    #[Route('/formation/', name: 'category')]
    public function categoryIndex(?CategoryRepository $categoryRepository): Response
    {
        if (!$categoryRepository) {
            return $this->redirectToRoute('home');
        }
        return $this->render('formations/formations_index.html.twig', [
            'categories' => $categoryRepository->findAll(),
        ]);
    }

    #[Route('/formation/{slug}', name: 'category_show',)]
    public function show(?Category $category): Response
    {
        if (!$category) {
            return $this->redirectToRoute('home');
        }
        return $this->render('formations/show_formation.html.twig', [
            'category' => $category,
        ]);
            
    }
}
