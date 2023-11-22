<?php

namespace App\Controller\Admin;

use App\Entity\Contact;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\EmailField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;


class ContactCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {  
        return Contact::class;
    }
    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('last_name', 'Nom'),
            TextField::new('first_name', 'Prénom'),
            EmailField::new('email'),
            TextField::new('object', 'Objet'),
            TextareaField::new('subject', 'Sujet'),
            BooleanField::new('is_reading','Réponse envoyée'),
            AssociationField::new('user', 'Nom du destinataire')->autocomplete() 
            
        ];
    }
    
}
