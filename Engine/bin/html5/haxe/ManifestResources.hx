package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		Assets.defaultRootPath = rootPath;

		#if (openfl && !flash && !display)
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:pathy32:img%2F1x%2F1x%2FArtboard%202.pngy4:sizei2871y4:typey5:IMAGEy2:idR1y7:preloadtgoR0y32:img%2F1x%2F1x%2FArtboard%203.pngR2i563R3R4R5R7R6tgoR0y32:img%2F1x%2F1x%2FArtboard%204.pngR2i4024R3R4R5R8R6tgoR0y27:img%2F1x%2FArtboard%202.pngR2i3239R3R4R5R9R6tgoR0y27:img%2F1x%2FArtboard%203.pngR2i568R3R4R5R10R6tgoR0y27:img%2F1x%2FArtboard%204.pngR2i4655R3R4R5R11R6tgoR0y12:img%2Fbg.jpgR2i821400R3R4R5R12R6tgoR0y16:img%2FCircle.pngR2i4655R3R4R5R13R6tgoR0y21:img%2FCircleBlack.pngR2i4024R3R4R5R14R6tgoR0y13:img%2Fdvd.pngR2i34715R3R4R5R15R6tgoR0y14:img%2Fisil.jpgR2i12302R3R4R5R16R6tgoR0y16:img%2Fplayer.pngR2i14323R3R4R5R17R6tgoR0y16:img%2FSquare.pngR2i568R3R4R5R18R6tgoR0y21:img%2FSquareBlack.pngR2i563R3R4R5R19R6tgoR0y18:img%2FTriangle.pngR2i3239R3R4R5R20R6tgoR0y23:img%2FTriangleBlack.pngR2i2871R3R4R5R21R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_1x_1x_artboard_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_1x_1x_artboard_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_1x_1x_artboard_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_1x_artboard_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_1x_artboard_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_1x_artboard_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_bg_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_circle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_circleblack_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_dvd_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_isil_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_player_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_square_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_squareblack_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_triangle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__img_triangleblack_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:image("assets/img/1x/1x/Artboard 2.png") @:noCompletion #if display private #end class __ASSET__img_1x_1x_artboard_2_png extends lime.graphics.Image {}
@:keep @:image("assets/img/1x/1x/Artboard 3.png") @:noCompletion #if display private #end class __ASSET__img_1x_1x_artboard_3_png extends lime.graphics.Image {}
@:keep @:image("assets/img/1x/1x/Artboard 4.png") @:noCompletion #if display private #end class __ASSET__img_1x_1x_artboard_4_png extends lime.graphics.Image {}
@:keep @:image("assets/img/1x/Artboard 2.png") @:noCompletion #if display private #end class __ASSET__img_1x_artboard_2_png extends lime.graphics.Image {}
@:keep @:image("assets/img/1x/Artboard 3.png") @:noCompletion #if display private #end class __ASSET__img_1x_artboard_3_png extends lime.graphics.Image {}
@:keep @:image("assets/img/1x/Artboard 4.png") @:noCompletion #if display private #end class __ASSET__img_1x_artboard_4_png extends lime.graphics.Image {}
@:keep @:image("assets/img/bg.jpg") @:noCompletion #if display private #end class __ASSET__img_bg_jpg extends lime.graphics.Image {}
@:keep @:image("assets/img/Circle.png") @:noCompletion #if display private #end class __ASSET__img_circle_png extends lime.graphics.Image {}
@:keep @:image("assets/img/CircleBlack.png") @:noCompletion #if display private #end class __ASSET__img_circleblack_png extends lime.graphics.Image {}
@:keep @:image("assets/img/dvd.png") @:noCompletion #if display private #end class __ASSET__img_dvd_png extends lime.graphics.Image {}
@:keep @:image("assets/img/isil.jpg") @:noCompletion #if display private #end class __ASSET__img_isil_jpg extends lime.graphics.Image {}
@:keep @:image("assets/img/player.png") @:noCompletion #if display private #end class __ASSET__img_player_png extends lime.graphics.Image {}
@:keep @:image("assets/img/Square.png") @:noCompletion #if display private #end class __ASSET__img_square_png extends lime.graphics.Image {}
@:keep @:image("assets/img/SquareBlack.png") @:noCompletion #if display private #end class __ASSET__img_squareblack_png extends lime.graphics.Image {}
@:keep @:image("assets/img/Triangle.png") @:noCompletion #if display private #end class __ASSET__img_triangle_png extends lime.graphics.Image {}
@:keep @:image("assets/img/TriangleBlack.png") @:noCompletion #if display private #end class __ASSET__img_triangleblack_png extends lime.graphics.Image {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else



#end

#if (openfl && !flash)

#if html5

#else

#end

#end
#end

#end
