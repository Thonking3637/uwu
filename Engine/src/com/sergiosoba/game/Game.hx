package com.sergiosoba.game;

import com.sergiosoba.engine.input.Keyboard;
import com.sergiosoba.engine.objects.Screen;
import com.sergiosoba.engine.objects.SimpleObject;
import openfl.display.Sprite;
import openfl.geom.Point;

/**
 * ...
 * @author Sergiosoba
 */
class Game extends Screen 
{
	var player:SimpleObject;
	var dvd:SimpleObject;
	var move:Point;	

	public function new(canvas:Sprite) 
	{
		super(canvas);
		
		player = new SimpleObject(this, "player.png");		
		player.x = stage.stageWidth / 2;
		player.y = stage.stageHeight;
		player.playerPivot();
		player.scale(0.1);
		
		//
		
	
		
		//
		
		move = new Point(2, 2);
	}
	
	override public function update():Void 
	{		
		if (Keyboard.isLeft){
			player.x -= 5;
		}
		if (Keyboard.isRight){
			player.x += 5;
		}
		if (Keyboard.isUp){
			player.y -= 5;
		}
		if (Keyboard.isDown){
			player.y += 5;
		}
		
		// >
		if (player.x + player.width / 2 >= stage.stageWidth){
			player.x = stage.stageWidth - player.width / 2;
			move.x *= -1;
		}
		if (player.y + player.height / 2 >= stage.stageHeight){
			player.y = stage.stageHeight - player.height / 2;
			move.y *= -1;
		}
		// <
		if (player.x - player.width / 2 <= 0){
			player.x = 0 + player.width / 2;
			move.x *= -1;
		}
		if (player.y - player.height / 2 <= 0){
			player.y = player.height / 2;
			move.y *= -1;
		}
		
		
	}
}