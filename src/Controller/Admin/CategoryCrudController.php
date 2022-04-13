<?php

namespace App\Controller\Admin;

use App\Entity\Lesson;
use App\Entity\Category;
use Vich\UploaderBundle\Form\Type\VichImageType;
use EasyCorp\Bundle\EasyAdminBundle\Field\SlugField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ColorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;


class CategoryCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Category::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('name', 'Nom de la formation'),
            SlugField::new('slug')
                ->onlyOnForms()
                ->setTargetFieldName('name'),
            ColorField::new('color'),

            TextField::new('imageFile', 'Illustration')
                ->setFormType(VichImageType::class)
                ->hideOnIndex(),
                
            ImageField::new('file', 'Illustration')
                ->setBasePath('/uploads/library/formation/')
                ->onlyOnIndex(),
            TextareaField::new('featuredText', 'Description de la formation'),
            AssociationField::new('lessons', 'Liste des cours disponibles pour la formation'),
        ];    

         
    }
}
