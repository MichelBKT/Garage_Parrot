<?php

namespace App\Form;

use App\Entity\Advert;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\RangeType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class FiltersType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('price', RangeType::class, [
                'label' => 'Prix : ',
                'attr' => [
                    'min' => 1000,
                    'max' => 100000,
                    'step' => 500,
                    'id' => 'price',
                    'value' => 15000
                ],

            ])
            ->add('km', RangeType::class, [
                'label' => 'Kilométrage : ',
                'attr' => [
                    'min' => 0,
                    'max' => 250000,
                    'step' => 10000,
                    'id' =>'km',
                    'value' => 125000
                ]
            ])
            ->add('co2_emission', RangeType::class, [
                'label' => 'Emission de CO2 : ',
                'attr' => [
                    'min' => 0,
                    'max' => 300,
                    'step' => 50,
                    'id' => "co2",
                    'value' => 150
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Advert::class,
        ]);
    }
}
