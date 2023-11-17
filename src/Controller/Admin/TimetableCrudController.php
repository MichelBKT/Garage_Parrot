<?php

namespace App\Controller\Admin;

use App\Entity\Timetable;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
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
            ChoiceField::new('day_week', 'Jour de la semaine')
            ->setChoices(['Lundi'=>'Lundi', 'Mardi' => 'Mardi', 'Mercredi' => 'Mercredi', 'Jeudi'=>'Jeudi', 'Vendredi' => 'Vendredi',
            'Samedi' => 'Samedi', 'Dimanche' => 'Dimanche']),
            
            TextField::new('time', 'Plage horaire'),
            AssociationField::new('user', 'Nom du valideur')->autocomplete(),
        ];
    }
    
}
