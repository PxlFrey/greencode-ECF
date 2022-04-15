<?php

namespace App\Controller\Admin;

use App\Entity\User;
use Vich\UploaderBundle\Form\Type\VichImageType;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use Symfony\Component\Form\ChoiceList\Factory\Cache\ChoiceLabel;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class UserCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return User::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            ImageField::new('profileFile', 'Avatar')
                ->setBasePath('/uploads/library/profile_users')
                ->onlyOnIndex(),
            TextField::new('firstName', 'Prénom')->hideOnIndex(),
            TextField::new('lastName', 'Nom')->hideOnIndex(),
            TextField::new('username', 'Nom d\'utilisateur'),
            TextField::new('email', 'Adresse email'),

            TextField::new('imageFile', 'Avatar')
            ->setFormType(VichImageType::class)
            ->hideOnIndex(),


            ChoiceField::new('roles', 'Rôles')
                ->setChoices([
                    'Apprenant' => 'ROLE_APPRENANT',
                    'Administrateur' => 'ROLE_ADMIN',
                    'Formateur' => 'ROLE_FORMATEUR',
                    ])
                ->setFormTypeOption('multiple', true),

            BooleanField::new('isCoach', 'Est formateur chez GreenCode'), 
            TextEditorField::new('story', 'Petite description')->hideOnIndex(),   
        ];
    }
}
