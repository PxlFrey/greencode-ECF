<?php

namespace App\Controller\Admin;

use App\Entity\Lesson;
use App\Entity\Library;
use EasyCorp\Bundle\EasyAdminBundle\Field\SlugField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\UrlField;
use Vich\UploaderBundle\Form\Type\VichImageType;



class LessonCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Lesson::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('title', 'Titre de la leçon'),
            SlugField::new('slug')
               ->hideOnIndex()
               ->setTargetFieldName('title'),
            AssociationField::new('category', 'Formation'),

            TextField::new('pdfVichFile', 'Leçon en pdf')
                ->setFormType(VichImageType::class)
                ->onlyOnForms(),
    
            TextField::new('imageFile', 'Image principal')
                ->setFormType(VichImageType::class)
                ->hideOnIndex(),

            ImageField::new('file', 'Image principal')
                ->setBasePath('/uploads/library/lesson/')
                ->onlyOnIndex(),

            UrlField::new('url', 'Url de la leçon'),   
            TextField::new('featuredText', 'Résumé')
                ->hideOnIndex(),
            TextEditorField::new('content', 'Contenu'),
            DateTimeField::new('createdAt')
               ->hideOnForm(),
            DateTimeField::new('updatedAt')
               ->hideOnForm()
           
        ];

    }
}
