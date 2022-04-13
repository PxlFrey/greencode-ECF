<?php

namespace App\Controller\Admin;

use App\Entity\Category;
use App\Entity\Lesson;
use App\Entity\Library;

use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use EasyCorp\Bundle\EasyAdminBundle\Config\Assets;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;

class CoachController extends AbstractDashboardController
{
    /**
     * Require ROLE_FORMATEUR only for this action
     * 
     * @IsGranted("ROLE_FORMATEUR")
     */

    public function __construct(
        private AdminUrlGenerator $adminUrlGenerator
    )
    {

    }

    #[Route('/formations', name: 'formations')]
    public function index(): Response
    {
       $url= $this->adminUrlGenerator->setController(CategoryCrudController::class)
           ->generateUrl();

       return $this->redirect($url);
    }

    public function configureAssets(): Assets
    {
        return Assets::new()
            ->addCssFile('assets/css/admin.css');
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('<img src="assets/img/logo-footer.svg">')
            ->setFaviconPath('assets/img/favicon.svg');
    }

    public function configureMenuItems(): iterable
    {
      yield MenuItem::linkToUrl('Retour au site', 'fa fa-rotate-left', '/' );

      yield MenuItem::section('Formations');
      yield MenuItem::linkToCrud('Toutes les formations', 'fas fa-list', Category::class);
      yield MenuItem::linkToCrud('Ajouter une formation', 'fas fa-plus', Category::class)->setAction(Crud::PAGE_NEW);
      yield MenuItem::linkToRoute('Aller à la page', 'fa fa-arrow-right', 'category');
     

      yield MenuItem::section('Leçons');
      yield MenuItem::linkToCrud('Toutes les leçons', 'fas fa-list', Lesson::class);
      yield MenuItem::linkToCrud('Ajouter une leçon', 'fas fa-plus', Lesson::class)->setAction(Crud::PAGE_NEW);

      yield MenuItem::section('Mediathèque');
      yield MenuItem::linkToCrud('Tous les médias', 'fas fa-list', Library::class);
      yield MenuItem::linkToCrud('Ajouter un média', 'fas fa-plus', Library::class)->setAction(Crud::PAGE_NEW);

    }

    
}
