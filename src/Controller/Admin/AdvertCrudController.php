<?php

namespace App\Controller\Admin;

use App\Entity\Advert;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class AdvertCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Advert::class;
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('title', 'Titre'),
            IntegerField::new('price', 'Prix (en €)'),
            DateTimeField::new('created_at')
            ->setDisabled(),
            BooleanField::new('CTOk', 'Contrôle Technique ok'),
            IntegerField::new('km', 'Kilométrage (km)'),
            BooleanField::new('manualGear', 'Boite de vitesse manuelle'),
            BooleanField::new('doors5', '5 portes'),
            IntegerField::new('fiscalPower', 'Puissance fiscale (cv)'),
            IntegerField::new('co2Emission', 'Emission de CO2 (en g/km)'),
            AssociationField::new('user')->autocomplete(),
        
        ];
    }
    
}
