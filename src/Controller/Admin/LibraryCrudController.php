<?php

namespace App\Controller\Admin;

use App\Entity\Library;
use Vich\UploaderBundle\Form\Type\VichImageType;
use EasyCorp\Bundle\EasyAdminBundle\Field\SlugField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class LibraryCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Library::class;
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('name', 'Nom du fichier'),
            TextField::new('imageFile', 'Image')
                ->setFormType(VichImageType::class)
                ->hideOnIndex(),
            ImageField::new('file')->setBasePath('/uploads/library/')->onlyOnIndex(),   
            SlugField::new('slug')
                ->setTargetFieldName('name')
                ->hideOnIndex(),

        ];

    }

}
