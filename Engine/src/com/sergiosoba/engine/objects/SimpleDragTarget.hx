package com.sergiosoba.engine.objects;

import openfl.display.DisplayObject;
import openfl.display.Sprite;
import openfl.events.MouseEvent;
import openfl.geom.Point;

/**
 * ...
 * @author Sergiosoba
 */
class SimpleDragTarget extends SimpleDrag 
{
	var initPos:Point;
	var target:Sprite = null;
	var onComplete:Dynamic = null;
	
	public function new(canvas:Sprite, src:String, posX:Float=0, posY:Float=0) 
	{
		super(canvas, src, posX, posY);
		refreshInitPos();
	}
	
	public function refreshInitPos():Void{
		initPos = new Point(this.x, this.y);
	}
	
	public function addTarget (_target:Sprite):Void
	{
		target = _target;
	}
	
	public function addCallback(_onComplete:Dynamic){
		onComplete = _onComplete;
	}
	
	override function onMouseUp(e:MouseEvent):Void 
	{
		super.onMouseUp(e);
		
		if (target != null)
		{
			if (this.hitTestObject(target))
			{
				canDrag = false;				
				target.alpha = 0;
				this.x = target.x;
				this.y = target.y;
				if (onComplete != null){
					onComplete();
				}
				return;
			}
		}		
		
		this.x = initPos.x;
		this.y = initPos.y;
	}
}