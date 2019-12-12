<?php
class GHappy extends CApplicationComponent
{
	public function init()
	{
		echo "Inicializado";
	}

	public function hi()
	{
		return "Hi all =)";
	}
}