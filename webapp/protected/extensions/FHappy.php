<?php
class FHappy extends CApplicationComponent
{
	public $trato;

	public function init()
	{
		echo "Inicializado<br>";
	}

	public function hi()
	{
		if($this->trato===null)
			return "Buenas como esta usted.";
		if($this->trato===1)
			return "Hola men como estas.";
	}
}