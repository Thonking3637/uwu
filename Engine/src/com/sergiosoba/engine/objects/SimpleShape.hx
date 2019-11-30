package com.sergiosoba.engine.objects;

import openfl.display.Shape;
import openfl.display.Sprite;

/**
 * ...
 * @author Sergiosoba
 */
class SimpleShape extends Sprite 
{
	var shape:Shape;

	public function new(canvas:Sprite,
	width:Float, height:Float, color:Int,
	posX:Float = 0, posY:Float = 0) 
	{
		super();
		this.x = posX;
		this.y = posY;		
		canvas.addChild(this);
		
		shape = new Shape ();
		shape.graphics.beginFill (color);
		shape.graphics.drawRect (0, 0, width, height);
		shape.graphics.endFill ();
		this.addChild (shape);
	}
	
	public function centerPivot():Void
	{
		shape.x = -shape.width / 2;
		shape.y = -shape.height / 2;
	}
}