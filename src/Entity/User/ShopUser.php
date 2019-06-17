<?php

declare(strict_types=1);

namespace App\Entity\User;

use App\Entity\QuotationRequest;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping\Entity;
use Doctrine\ORM\Mapping\Table;
use Sylius\Component\Core\Model\ShopUser as BaseShopUser;

/**
 * @Entity
 * @Table(name="sylius_shop_user")
 */
class ShopUser extends BaseShopUser
{
    /**
     * @ORM\OneToMany(targetEntity="App\Entity\QuotationRequest", mappedBy="User")
     */
    private $quotationRequests;

    public function __construct()
    {
        parent::__construct();
        $this->quotationRequests = new ArrayCollection();
    }

    /**
     * @return Collection|QuotationRequest[]
     */
    public function getQuotationRequests(): Collection
    {
        return $this->quotationRequests;
    }

    public function addQuotationRequest(QuotationRequest $quotationRequest): self
    {
        if (!$this->quotationRequests->contains($quotationRequest)) {
            $this->quotationRequests[] = $quotationRequest;
            $quotationRequest->setUser($this);
        }

        return $this;
    }

    public function removeQuotationRequest(QuotationRequest $quotationRequest): self
    {
        if ($this->quotationRequests->contains($quotationRequest)) {
            $this->quotationRequests->removeElement($quotationRequest);
            // set the owning side to null (unless already changed)
            if ($quotationRequest->getUser() === $this) {
                $quotationRequest->setUser(null);
            }
        }

        return $this;
    }
}
