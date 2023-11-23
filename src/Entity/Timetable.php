<?php

namespace App\Entity;

use App\Repository\TimetableRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: TimetableRepository::class)]
class Timetable
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $day_week = null;

    #[ORM\Column(length: 255)]
    private ?string $time = null;

    #[ORM\ManyToOne(inversedBy: 'timetable')]
    #[ORM\JoinColumn]
    private ?User $user;


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDayWeek(): ?string
    {
        return $this->day_week;
    }

    public function setDayWeek(string $day_week): static
    {
        $this->day_week = $day_week;

        return $this;
    }

    public function getTime(): ?string
    {
        return $this->time;
    }

    public function setTime(string $time): static
    {
        $this->time = $time;

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
