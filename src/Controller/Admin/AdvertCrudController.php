<?php

namespace App\Controller\Admin;

use App\Entity\Advert;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use Vich\UploaderBundle\Form\Type\VichImageType;

class AdvertCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Advert::class;
    }


    public function configureFields(string $pageName): iterable
    {
        $mappingParams = $this->getParameter('vich_uploader.mappings');
        $carImagePath = $mappingParams['car']['uri_prefix'];
        
        yield IdField::new('id')->hideOnForm();
        yield TextField::new('title', 'Titre');
        yield TextareaField::new('imageFile', 'Photo')->setFormType(VichImageType::class)->hideOnIndex();
        yield ImageField::new('imageName')->setBasePath($carImagePath)->hideOnForm();
        yield IntegerField::new('price', 'Prix (en €)');
        yield DateTimeField::new('created_at', 'Date de publication')->setDisabled();
        yield BooleanField::new('CTOk', 'Contrôle Technique ok')->hideOnIndex();
        yield IntegerField::new('km', 'Kilométrage (km)');
        yield BooleanField::new('manualGear', 'Boite de vitesse manuelle')->hideOnIndex();
        yield BooleanField::new('doors5', '5 portes')->hideOnIndex();
        yield IntegerField::new('fiscalPower', 'Puissance fiscale (cv)');
        yield IntegerField::new('co2Emission', 'Emission de CO2 (en g/km)');
        yield AssociationField::new('user', 'Nom du valideur')->autocomplete();
        
    
    }
    
}
