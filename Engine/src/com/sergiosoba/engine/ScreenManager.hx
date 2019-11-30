package com.sergiosoba.engine;
import com.sergiosoba.engine.objects.Screen;
import openfl.display.Sprite;
import openfl.events.Event;

/**
 * ...
 * @author Sergiosoba
 */
class ScreenManager 
{
	// read-only property
	public static var instance(default, null):ScreenManager = new ScreenManager();
	private function new () {}  // private constructor
	private var Canvas:Sprite;
	
	private var CurrentScreen:Screen = null;
	
	public function init(canvas:Sprite, screen:Dynamic):Void
	{
		Canvas = canvas;
		setScreen(screen);
	}
	
	public function setScreen(screen:Dynamic):Void
	{
		if (CurrentScreen != null)
		{
			CurrentScreen.destroy();
		}
		CurrentScreen = Type.createInstance(screen, [Canvas]);
	}
	
	public function update(e:Event):Void
	{
		if (CurrentScreen != null){
			CurrentScreen.update();
		}
	}
}