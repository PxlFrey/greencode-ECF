<?php

namespace App\Controller\Admin;

use App\Entity\Category;
use App\Entity\Lesson;
use App\Entity\Media;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AdminController extends AbstractDashboardController
{
    public function __construct(
        private AdminUrlGenerator $adminUrlGenerator
    )
    {

    }

    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
       $url= $this->adminUrlGenerator->setController(CategoryCrudController::class)
           ->generateUrl();

       return $this->redirect($url);
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('GreenCode Admin');
    }

    public function configureMenuItems(): iterable
    {
      yield MenuItem::linkToDashboard('Accueil Administration', 'fa fa-home');
      yield MenuItem::linkToUrl('GreenCode - Accueil', 'fa fa-desktop', '/' );

      yield MenuItem::section('Instructeurs');
      yield MenuItem::subMenu('Actions', 'fa fa-list')->setSubItems([]);

      yield MenuItem::section('Apprenants');
      yield MenuItem::subMenu('Actions', 'fa fa-list')->setSubItems([]);

      yield MenuItem::section('Formations');
      yield MenuItem::subMenu('Actions', 'fa fa-list')->setSubItems([
            MenuItem::linkToCrud('Toutes les formations', 'fas fa-eye', Category::class),
            MenuItem::linkToCrud('Ajouter une formation', 'fas fa-plus', Category::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToRoute('Aller à la page', 'fa fa-desktop', 'category_page')
      ]);

      yield MenuItem::section('Leçons');
      yield MenuItem::subMenu('Actions', 'fa fa-list')->setSubItems([
            MenuItem::linkToCrud('Toutes les leçons', 'fas fa-eye', Lesson::class),
            MenuItem::linkToCrud('Ajouter une leçon', 'fas fa-plus', Lesson::class)->setAction(Crud::PAGE_NEW),
            MenuItem::linkToRoute('Aller à la page', 'fa fa-desktop', 'category_page')
      ]);

      yield MenuItem::section('Media');
      yield MenuItem::subMenu('Actions', 'fa fa-list')->setSubItems([
            MenuItem::linkToCrud('Médiathèque', 'fas fa-eye', Media::class),
            MenuItem::linkToCrud('Ajouter un média', 'fas fa-plus', Media::class)->setAction(Crud::PAGE_NEW),
      ]);
    }
}
