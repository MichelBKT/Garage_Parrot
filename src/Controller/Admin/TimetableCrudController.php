<?php

namespace App\Controller\Admin;

use App\Entity\Timetable;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class TimetableCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Timetable::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            ChoiceField::new('day_week')
            ->setChoices(['Lundi'=>'1', 'Mardi' => '2', 'Mercredi' => '3', 'Jeudi'=>'4', 'Vendredi' => '5',
            'Samedi' => '6', 'Dimanche' => '7'])
            ->allowMultipleChoices(),
            
            TextField::new('time'),
            AssociationField::new('user', 'Nom de l\'utilisateur')->autocomplete(),
        ];
    }
    
}
