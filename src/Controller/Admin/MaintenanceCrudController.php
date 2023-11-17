<?php

namespace App\Controller\Admin;

use App\Entity\Maintenance;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\HiddenField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class MaintenanceCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Maintenance::class;

    }

    public function configureFields(string $pageName): iterable
    {
        
        return [
            IdField::new('id')->hideOnForm(),
            AssociationField::new('user', 'Nom du valideur')->autocomplete(),
            TextField::new('designation', 'Libellé')
            
        ];
    }
}
