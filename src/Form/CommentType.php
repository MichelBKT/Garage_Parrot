<?php

namespace App\Form;

use App\Entity\Comment;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class CommentType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('rate', ChoiceType::class, [
                'choices'=>[
                '1/5' => 1,
                '2/5' => 2,
                '3/5' => 3,
                '4/5' => 4,
                '5/5' => 5],
                'row_attr' => [
                    'expanded'=> true,
                ],
                'label' => 'Choisir une note',
                'label_attr' => ['class'=> " text-light my-2"],
            ])
            ->add('nickname', TextType::class, [
                'label' => 'Pseudo',
                'required' => true,
                'attr' => ['class' => "my-2 form-control-md"],
                'label_attr' => ['class'=> "my-2 text-light"],
            ])
            ->add('designation', TextareaType::class, [
                'label' => 'Poster un commentaire',
                'attr' => ['class'=> "my-2"],
                'label_attr' => ['class'=> "my-2 text-light"],
            ])
            ->add('is_online', HiddenType::class, [
                'empty_data' => false,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Comment::class,

        ]);
    }
}
