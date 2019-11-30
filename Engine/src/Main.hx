package;

import com.sergiosoba.engine.ScreenManager;
import com.sergiosoba.engine.input.Keyboard;
import com.sergiosoba.engine.input.Mouse;
import com.sergiosoba.game.Test;
import openfl.display.Sprite;
import openfl.events.Event;

/**
 * ...
 * @author Sergiosoba
 */
class Main extends Sprite 
{
	public function new() 
	{
		super();
		Mouse.init(stage);
		Keyboard.init(stage);
		ScreenManager.instance.init(this, Test);
		stage.addEventListener(Event.ENTER_FRAME, ScreenManager.instance.update);
	}
}