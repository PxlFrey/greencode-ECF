<?php

namespace App\Controller;

use App\Repository\CategoryRepository;
use App\Repository\LessonRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/home', name: 'home')]

    public function home(LessonRepository $lessonRepository, CategoryRepository $categoryRepository): Response
    {
        return $this->render('home/index.html.twig', [
            'lessons' => $lessonRepository->findAll(),
            'categories' => $categoryRepository->findBy(array(), array('createdAt' => 'desc'),3),
        ]);
    }

    #[Route('/', name: 'index')]

    public function index(): Response
    {
        return $this->redirectToRoute('home');
    }
}
