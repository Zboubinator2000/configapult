<?php

namespace App\Entity\Quotation;

use App\Entity\User\ShopUser;
use Doctrine\ORM\Mapping as ORM;
use Sylius\Component\Resource\Model\ResourceInterface;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity(repositoryClass="App\Repository\QuotationRequestRepository")
 */
class QuotationRequest implements ResourceInterface
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="text")
     */
    private $Description;

    /**
     * @ORM\Column(type="boolean")
     */
    private $Treated;

    /**
     * @ORM\Column(type="string", nullable=true)
     *
     * @Assert\NotBlank(message="Please, upload the product brochure as a PDF file.")
     * @Assert\File(mimeTypes={ "application/pdf" })
     */
    private $Image1;

    /**
     * @ORM\Column(type="string", nullable=true)
     *
     * @Assert\NotBlank(message="Please, upload the product brochure as a PDF file.")
     * @Assert\File(mimeTypes={ "application/pdf" })
     */
    private $Image2;

    /**
     * @ORM\Column(type="string", nullable=true)
     *
     * @Assert\NotBlank(message="Please, upload the product brochure as a PDF file.")
     * @Assert\File(mimeTypes={ "application/pdf" })
     */
    private $Image3;

    /**
     * @ORM\Column(type="string", nullable=true)
     *
     * @Assert\NotBlank(message="Please, upload the product brochure as a PDF file.")
     * @Assert\File(mimeTypes={ "application/pdf" })
     */
    private $Image4;

    /**
     * @ORM\Column(type="string", nullable=true)
     *
     * @Assert\NotBlank(message="Please, upload the product brochure as a PDF file.")
     * @Assert\File(mimeTypes={ "application/pdf" })
     */
    private $Image5;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\User\ShopUser", inversedBy="quotationRequests")
     * @ORM\JoinColumn(nullable=false)
     */
    private $User;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDescription(): ?string
    {
        return $this->Description;
    }

    public function setDescription(string $Description): self
    {
        $this->Description = $Description;

        return $this;
    }

    public function getTreated(): ?bool
    {
        return $this->Treated;
    }

    public function setTreated(bool $Treated): self
    {
        $this->Treated = $Treated;

        return $this;
    }

    public function getImage1(): ?string
    {
        return $this->Image1;
    }

    public function setImage1(?string $Image1): self
    {
        $this->Image1 = $Image1;

        return $this;
    }

    public function getImage2(): ?string
    {
        return $this->Image2;
    }

    public function setImage2(?string $Image2): self
    {
        $this->Image2 = $Image2;

        return $this;
    }

    public function getImage3(): ?string
    {
        return $this->Image3;
    }

    public function setImage3(?string $Image3): self
    {
        $this->Image3 = $Image3;

        return $this;
    }

    public function getImage4(): ?string
    {
        return $this->Image4;
    }

    public function setImage4(?string $Image4): self
    {
        $this->Image4 = $Image4;

        return $this;
    }

    public function getImage5(): ?string
    {
        return $this->Image5;
    }

    public function setImage5(?string $Image5): self
    {
        $this->Image5 = $Image5;

        return $this;
    }

    public function getUser(): ?ShopUser
    {
        return $this->User;
    }

    public function setUser(?ShopUser $User): self
    {
        $this->User = $User;

        return $this;
    }
}
