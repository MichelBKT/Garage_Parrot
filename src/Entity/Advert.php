<?php

namespace App\Entity;

use App\Repository\AdvertRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: AdvertRepository::class)]
class Advert
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $title = null;

    #[ORM\Column]
    private ?int $price = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $created_at = null;

    #[ORM\Column]
    private ?bool $CT_ok = null;

    #[ORM\Column]
    private ?int $km = null;

    #[ORM\Column]
    private ?bool $manual_gear = null;

    #[ORM\Column]
    private ?bool $doors_5 = null;

    #[ORM\Column]
    private ?int $fiscal_power = null;

    #[ORM\Column]
    private ?int $co2_emission = null;

    #[ORM\ManyToOne(inversedBy: 'advert')]
    #[ORM\JoinColumn(nullable: false)]
    private ?User $user = null;

    public function __construct()
    {
        $this->created_at = new \DateTimeImmutable();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): static
    {
        $this->title = $title;

        return $this;
    }

    public function getPrice(): ?int
    {
        return $this->price;
    }

    public function setPrice(int $price): static
    {
        $this->price = $price;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeImmutable
    {
        return $this->created_at;
    }

    public function setCreatedAt(\DateTimeImmutable $created_at): static
    {
        $this->created_at = $created_at;

        return $this;
    }

    public function isCTOk(): ?bool
    {
        return $this->CT_ok;
    }

    public function setCTOk(bool $CT_ok): static
    {
        $this->CT_ok = $CT_ok;

        return $this;
    }

    public function getKm(): ?int
    {
        return $this->km;
    }

    public function setKm(int $km): static
    {
        $this->km = $km;

        return $this;
    }

    public function isManualGear(): ?bool
    {
        return $this->manual_gear;
    }

    public function setManualGear(bool $manual_gear): static
    {
        $this->manual_gear = $manual_gear;

        return $this;
    }

    public function isDoors5(): ?bool
    {
        return $this->doors_5;
    }

    public function setDoors5(bool $doors_5): static
    {
        $this->doors_5 = $doors_5;

        return $this;
    }

    public function getFiscalPower(): ?int
    {
        return $this->fiscal_power;
    }

    public function setFiscalPower(int $fiscal_power): static
    {
        $this->fiscal_power = $fiscal_power;

        return $this;
    }

    public function getCo2Emission(): ?int
    {
        return $this->co2_emission;
    }

    public function setCo2Emission(int $co2_emission): static
    {
        $this->co2_emission = $co2_emission;

        return $this;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): static
    {
        $this->user = $user;

        return $this;
    }
}
