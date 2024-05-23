<?php

namespace App\Controller;

use App\Entity\Contact;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ContactType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('last_name', TextType::class, [
                'label' => 'Nom',
                'label_attr' => ['class'=> 'text-light description rounded'],
                'required' => true,
                'attr' =>[ 'placeholder'=>'DUPONT'],
            ])
            ->add('first_name', TextType::class, [
                'label' => 'Prénom',
                'label_attr' => ['class' => 'text-light description rounded'],
                'required' => true,
                'attr' =>[ 'placeholder'=>'Jean'],
            ])
            ->add('email', EmailType::class, [
                'label' => 'E-mail',
                'label_attr' => ['class' => 'text-light description rounded'],
                'required' => true,
                'attr' =>[ 'placeholder'=>'jean.dupont@test.com'],
            ])
            ->add('object', TextType::class, [
                'label' => 'Objet',
                'label_attr' => ['class' => 'text-light description rounded'],
                'attr' =>[ 'placeholder'=>'Objet de votre demande'],
            ])
            ->add('subject', TextareaType::class, [
                'label' => 'Message',
                'required' => true,
                'label_attr' => ['class' => 'text-light description rounded col'],
                'attr' =>[ 'placeholder'=>'Ecrivez votre message ici',
                'rows' => 10],
            ])
            ->add('is_reading', HiddenType::class ,[
                'empty_data' => false,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Contact::class,
        ]);
    }
}
