package com.sergiosoba.game;

import com.sergiosoba.engine.ScreenManager;
import com.sergiosoba.engine.objects.Screen;
import com.sergiosoba.engine.objects.SimpleDrag;
import com.sergiosoba.engine.objects.SimpleDragTarget;
import com.sergiosoba.engine.objects.SimpleShape;
import openfl.display.Sprite;

/**
 * ...
 * @author Sergiosoba
 */
class Test extends Screen 
{

	public function new(canvas:Sprite) 
	{
		super(canvas);
		
		/*for (i in 0...10)
		{
			var temp:SimpleObject = new SimpleObject(this, "dvd.png", i * 100, i * 100);
			temp.scale(0.25);
		}*/
		
		var circle:SimpleDragTarget = new SimpleDragTarget(this, "Circle.png");
		
		circle.x = stage.stageHeight / 2 + 100;
		circle.centerPivot();
		circle.scale(1);
		
		
		circle.y = circle.width / 2 + 100;
		circle.refreshInitPos();
		
		var targetcircle:SimpleDrag = new SimpleDrag(this, "CircleBlack.png");
		targetcircle.x = stage.stageHeight / 2 + 100;
		targetcircle.centerPivot();
		targetcircle.scale(1);
			
		targetcircle.y = targetcircle.width / 2 + 500;
		
		targetcircle.centerPivot();
		
		circle.addTarget(targetcircle);
		/*------------------------------------------------------------------------------------------*/
		var cuadrado:SimpleDragTarget = new SimpleDragTarget(this, "Square.png");
		
		cuadrado.x = stage.stageHeight / 2 + 300;
		cuadrado.centerPivot();
		cuadrado.scale(1);
		
		cuadrado.y = cuadrado.width / 2 + 100;
		cuadrado.refreshInitPos();
		
		
		var targetcuadrado:SimpleDrag = new SimpleDrag(this, "SquareBlack.png");
		targetcuadrado.x = stage.stageHeight / 2 + 300;
		targetcuadrado.centerPivot();
		targetcuadrado.scale(1);
			
		targetcuadrado.y = targetcuadrado.width / 2 + 500;
		
		targetcuadrado.centerPivot();
		
		cuadrado.addTarget(targetcuadrado);
		/*------------------------------------------------------------------------------------------*/
		var triangle:SimpleDragTarget = new SimpleDragTarget(this, "Triangle.png");
		triangle.addCallback(onComplete);
		triangle.x = stage.stageHeight / 2 + 500;
		triangle.centerPivot();
		triangle.scale(1);
		
		
		triangle.y = triangle.width / 2 + 100;
		triangle.refreshInitPos();
		
		var targettriangle:SimpleDrag = new SimpleDrag(this, "TriangleBlack.png");
		targettriangle.x = stage.stageHeight / 2 + 500;
		targettriangle.centerPivot();
		targettriangle.scale(1);
			
		targettriangle.y = targettriangle.width / 2 + 500;
		
		targettriangle.centerPivot();
		
		triangle.addTarget(targettriangle);
	}
	
	function onComplete():Void 
	{
		
		ScreenManager.instance.setScreen(Game);
	}
	
	override public function update():Void 
	{
		super.update();
		
		/*if (Mouse.isMouseDown){
			ScreenManager.instance.setScreen(Menu);
		}*/
	}
	
}