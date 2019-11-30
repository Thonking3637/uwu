package com.sergiosoba.engine.input;
import openfl.display.Stage;
import openfl.events.MouseEvent;

/**
 * ...
 * @author Sergiosoba
 */
class Mouse 
{
	static public var isMouseDown:Bool = false;

	public function new() { }
	
	public static function init(stage:Stage):Void
	{
		stage.addEventListener(MouseEvent.MOUSE_UP, onMouseUp);
		stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
	}
	
	static function onMouseUp(e:MouseEvent):Void 
	{
		isMouseDown = false;
	}
	
	static function onMouseDown(e:MouseEvent):Void 
	{
		isMouseDown = true;
	}
}