package com.sergiosoba.engine.objects;

import openfl.display.Sprite;
import openfl.events.MouseEvent;

/**
 * ...
 * @author Sergiosoba
 */
class SimpleDrag extends SimpleObject 
{	
	public var canDrag:Bool = true;

	public function new(canvas:Sprite, src:String, posX:Float=0, posY:Float=0) 
	{
		super(canvas, src, posX, posY);
		
		buttonMode = true;
		stage.addEventListener(MouseEvent.MOUSE_UP, onMouseUp);
		this.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
	}
	
	function onMouseUp(e:MouseEvent):Void 
	{
		stopDrag();
	}
	
	function onMouseDown(e:MouseEvent):Void 
	{
		if(canDrag) this.startDrag();
	}	
}