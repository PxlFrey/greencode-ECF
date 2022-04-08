<?php

namespace App\Controller;

use App\Entity\User;
use App\Repository\UserRepository;
use App\Repository\CategoryRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class LearnController extends AbstractController
{
    /**
     * Require ROLE_APPRENANT only for this action
     * 
     * @IsGranted("ROLE_APPRENANT")
     */
    
    #[Route('/account', name: 'account')]
    public function index(CategoryRepository $categoryRepository, UserRepository $userRepository): Response
    {

        return $this->render('account/learn_base.html.twig', [
            'categories' => $categoryRepository->findAll(),
            'user' => $userRepository->findOneBy(array('id' => $this->getUser())),
        ]);
    }
}
