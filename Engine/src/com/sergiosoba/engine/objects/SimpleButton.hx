package com.sergiosoba.engine.objects;

import com.sergiosoba.engine.objects.SimpleObject;
import openfl.display.Sprite;
import openfl.events.MouseEvent;

/**
 * ...
 * @author Sergiosoba
 */
class SimpleButton extends SimpleObject 
{
	public function new(canvas:Sprite, src:String, posX:Float=0, posY:Float=0) 
	{
		super(canvas, src, posX, posY);
	}
	
	public function configure(_callback:Dynamic)
	{
		buttonMode = true;
		this.addEventListener(MouseEvent.CLICK, _callback);
	}	
}