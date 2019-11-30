package com.sergiosoba.game;

import com.sergiosoba.engine.ScreenManager;
import com.sergiosoba.engine.objects.Screen;
import com.sergiosoba.engine.objects.SimpleButton;
import openfl.display.Sprite;
import openfl.events.MouseEvent;

/**
 * ...
 * @author Sergiosoba
 */
class Menu extends Screen 
{	
	var btn:SimpleButton;

	public function new(canvas:Sprite) 
	{
		super(canvas);
		
		btn = new SimpleButton(this, "dvd.png", stage.stageWidth / 2, stage.stageHeight / 2);
		btn.configure(onBtnClick);
		btn.centerPivot();
		btn.scale(0.25);
	}
	
	function onBtnClick (e:MouseEvent):Void
	{
		ScreenManager.instance.setScreen(Game);
	}
}