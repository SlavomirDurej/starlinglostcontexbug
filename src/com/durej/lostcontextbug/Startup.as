package com.durej.lostcontextbug
{

	import starling.core.Starling;

	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.geom.Rectangle;
 
	[SWF(width="640", height="960", frameRate="60", backgroundColor="#000000")]
	public class Startup extends Sprite
    {
        private var mStarling:Starling;

		public function Startup()
        {
			stage.scaleMode 				= StageScaleMode.NO_SCALE;
            stage.align 					= StageAlign.TOP_LEFT;
			
			Starling.handleLostContext		= true;
			
            mStarling 						= new Starling(Main, stage,new Rectangle(0,0,640,960),null,"auto","baseline");
			mStarling.enableErrorChecking 	= true;
			mStarling.start();
		}
    }
}