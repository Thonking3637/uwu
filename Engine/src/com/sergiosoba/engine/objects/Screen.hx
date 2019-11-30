package com.sergiosoba.engine.objects;
import openfl.display.Sprite;

/**
 * ...
 * @author Sergiosoba
 */
class Screen extends Sprite
{

	public function new(canvas:Sprite) 
	{
		super();
		canvas.addChild(this);
	}
	
	public function update():Void
	{
		
	}
	
	public function destroy():Void
	{
		parent.removeChild(this);
	}
}