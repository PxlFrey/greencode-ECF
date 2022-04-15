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
use EasyCorp\Bundle\EasyAdminBundle\Config\Assets;


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
       $url= $this->adminUrlGenerator->setController(UserCrudController::class)
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

/** L'administrateur n'a accès qu'à la partie Utilisateurs, il peut éditer certaines données */
      yield MenuItem::section('Gestion des Utilisateurs', 'fa fa-users');
      yield MenuItem::linkToCrud('Tous les utilisateurs', 'fas fa-list', User::class);
      yield MenuItem::linkToCrud('Ajouter un utilisateur', 'fas fa-plus', User::class)->setAction(Crud::PAGE_NEW);

    }

    
}
