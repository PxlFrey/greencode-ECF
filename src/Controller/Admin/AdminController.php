<?php

namespace App\Controller\Admin;

use App\Entity\User;
use App\Entity\Lesson;
use App\Entity\Library;
use App\Entity\Category;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Config\UserMenu;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use Symfony\Component\Security\Core\User\UserInterface;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;



class AdminController extends AbstractDashboardController
{
    /**
     * Require ROLE_ADMIN only for this action
     * 
     * @IsGranted("ROLE_ADMIN")
     */

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
      yield MenuItem::linkToUrl('Retour au site', 'fa fa-rotate-left', '/' );


      yield MenuItem::section('Gestion des Utilisateurs', 'fa fa-users');
      yield MenuItem::linkToCrud('Tous les utilisateurs', 'fas fa-list', User::class);
      yield MenuItem::linkToCrud('Ajouter un utilisateur', 'fas fa-plus', User::class)->setAction(Crud::PAGE_NEW);

      yield MenuItem::section('Gestion des Formations', 'fa fa-book');
      yield MenuItem::linkToCrud('Toutes les formations', 'fas fa-list', Category::class);
      yield MenuItem::linkToCrud('Ajouter une formation', 'fas fa-plus', Category::class)->setAction(Crud::PAGE_NEW);
      yield MenuItem::linkToRoute('Aller à la page', 'fa fa-arrow-right', 'category');
     

      yield MenuItem::section('Gestion des Leçons', 'fa fa-book');
      yield MenuItem::linkToCrud('Toutes les leçons', 'fas fa-list', Lesson::class);
      yield MenuItem::linkToCrud('Ajouter une leçon', 'fas fa-plus', Lesson::class)->setAction(Crud::PAGE_NEW);

      yield MenuItem::section('Mediathèque', 'fa fa-file-image');
      yield MenuItem::linkToCrud('Tous les médias', 'fas fa-list', Library::class);
      yield MenuItem::linkToCrud('Ajouter un média', 'fas fa-plus', Library::class)->setAction(Crud::PAGE_NEW);

    }

    
}
