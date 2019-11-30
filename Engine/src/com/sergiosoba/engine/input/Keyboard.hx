package com.sergiosoba.engine.input;

import openfl.display.Stage;
import openfl.events.KeyboardEvent;

/**
 * ...
 * @author Sergiosoba
 */
class Keyboard 
{	
	static public var isUp:Bool = false;
	static public var isLeft:Bool = false;
	static public var isDown:Bool = false;
	static public var isRight:Bool = false;

	public function new() {}
	
	public static function init(stage:Stage):Void
	{
		stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
		stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
	}
	
	static function onKeyUp(e:KeyboardEvent):Void 
	{
		switch (e.keyCode) 
		{
			case 37:
				isLeft = false;
			case 38:
				isUp = false;
			case 39:
				isRight = false;
			case 40:
				isDown = false;
		}
	}
	
	static function onKeyDown(e:KeyboardEvent):Void 
	{
		switch (e.keyCode) 
		{
			case 37:
				isLeft = true;
			case 38:
				isUp = true;
			case 39:
				isRight = true;
			case 40:
				isDown = true;
		}
	}	
}