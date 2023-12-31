<?php

namespace App\Controller\Admin;

use App\Entity\Comment;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class CommentCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Comment::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('nickname', 'Pseudo'),
            ChoiceField::new('rate', 'Note')
            ->setChoices(['1/5'=> 1, '2/5'=> 2, '3/5'=> 3, '4/5'=> 4, '5/5'=> 5])->renderExpanded(),
            TextEditorField::new('designation', 'Commentaire'),
            BooleanField::new('is_online', 'Publié en ligne'),
            AssociationField::new('user','Nom du valideur')->autocomplete()
        ];
    }
}
