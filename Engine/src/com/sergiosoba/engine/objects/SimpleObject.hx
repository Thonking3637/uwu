package com.sergiosoba.engine.objects;

import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;

/**
 * ...
 * @author Sergiosoba
 */
class SimpleObject extends Sprite 
{
	private var bitmap:Bitmap;

	public function new(canvas:Sprite, src:String, posX:Float = 0, posY:Float = 0) 
	{
		super();
		this.x = posX;
		this.y = posY;
		canvas.addChild(this);		
		
		var bitmapData:BitmapData = Assets.getBitmapData ("img/" + src);
		bitmap = new Bitmap (bitmapData);
		bitmap.smoothing = true;
		this.addChild (bitmap);
	}
	
	public function centerPivot():Void
	{
		bitmap.x = -bitmap.width / 2;
		bitmap.y = -bitmap.height / 2;
	}
	
	public function playerPivot():Void
	{
		bitmap.x = -bitmap.width / 2;
		bitmap.y = -bitmap.height;
	}
	
	public function scale(value:Float):Void
	{
		this.scaleX = this.scaleY = value;
	}	
}