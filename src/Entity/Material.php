<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MaterialRepository")
 */
class Material
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=25)
     */
    private $grupo;

    /**
     * @ORM\Column(type="string", length=25)
     */
    private $material;

    /**
     * @ORM\Column(type="string", length=25)
     */
    private $marca;

    /**
     * @ORM\Column(type="integer")
     */
    private $venta_mes;

    /**
     * @ORM\Column(type="integer")
     */
    private $mes;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     */
    private $precio_compra;

    /**
     * @ORM\Column(type="decimal", precision=12, scale=2)
     */
    private $precio_venta;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getGrupo(): ?string
    {
        return $this->grupo;
    }

    public function setGrupo(string $grupo): self
    {
        $this->grupo = $grupo;

        return $this;
    }

    public function getMaterial(): ?string
    {
        return $this->material;
    }

    public function setMaterial(string $material): self
    {
        $this->material = $material;

        return $this;
    }

    public function getMarca(): ?string
    {
        return $this->marca;
    }

    public function setMarca(string $marca): self
    {
        $this->marca = $marca;

        return $this;
    }

    public function getVentaMes(): ?int
    {
        return $this->venta_mes;
    }

    public function setVentaMes(int $venta_mes): self
    {
        $this->venta_mes = $venta_mes;

        return $this;
    }

    public function getMes(): ?int
    {
        return $this->mes;
    }

    public function setMes(int $mes): self
    {
        $this->mes = $mes;

        return $this;
    }

    public function getPrecioCompra(): ?string
    {
        return $this->precio_compra;
    }

    public function setPrecioCompra(string $precio_compra): self
    {
        $this->precio_compra = $precio_compra;

        return $this;
    }

    public function getPrecioVenta(): ?string
    {
        return $this->precio_venta;
    }

    public function setPrecioVenta(string $precio_venta): self
    {
        $this->precio_venta = $precio_venta;

        return $this;
    }
}
