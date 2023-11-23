<?php

namespace App\Entity;

use App\Repository\AdvertRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\File;
use Vich\UploaderBundle\Mapping\Annotation as Vich;

#[ORM\Entity(repositoryClass: AdvertRepository::class)]
#[Vich\Uploadable]
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
    
    #[Vich\UploadableField(mapping: 'car', fileNameProperty: 'imageName', size: 'imageSize')]
    private ?File $imageFile = null;

    #[ORM\Column(nullable: true)]
    private ?string $imageName = null;

    #[ORM\Column(nullable: true)]
    private ?int $imageSize = null;

    #[ORM\Column(nullable: true)]
    private ?\DateTimeImmutable $updatedAt = null;

    #[ORM\ManyToOne(inversedBy: 'advert')]
    #[ORM\JoinColumn]
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
     /**
     * If manually uploading a file (i.e. not using Symfony Form) ensure an instance
     * of 'UploadedFile' is injected into this setter to trigger the update. If this
     * bundle's configuration parameter 'inject_on_load' is set to 'true' this setter
     * must be able to accept an instance of 'File' as the bundle will inject one here
     * during Doctrine hydration.
     *
     * @param File|\Symfony\Component\HttpFoundation\File\UploadedFile|null $imageFile
     */
    public function setImageFile(?File $imageFile = null): void
    {
        $this->imageFile = $imageFile;

        if (null !== $imageFile) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            $this->updatedAt = new \DateTimeImmutable();
        }
    }

    public function getImageFile(): ?File
    {
        return $this->imageFile;
    }

    public function setImageName(?string $imageName): void
    {
        $this->imageName = $imageName;
    }

    public function getImageName(): ?string
    {
        return $this->imageName;
    }

    public function setImageSize(?int $imageSize): void
    {
        $this->imageSize = $imageSize;
    }

    public function getImageSize(): ?int
    {
        return $this->imageSize;
    }
}
