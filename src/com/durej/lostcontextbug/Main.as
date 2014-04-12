package com.durej.lostcontextbug
{

	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	import starling.utils.AssetManager;

	import flash.filesystem.File;

	public class Main extends Sprite
	{
		var assetManager		: AssetManager;
		
		public function Main()
        	{
			assetManager = new AssetManager(1,false);
			assetManager.enqueue([File.applicationDirectory.resolvePath("spritesheet.atf"),File.applicationDirectory.resolvePath("spritesheet.xml")]);
			assetManager.verbose = true;
			assetManager.loadQueue(onProgress);				
		}


		private function onProgress(ratio : Number) : void
		{
			if (ratio == 1) displayLoadedObj();
		}

		private function displayLoadedObj() : void
		{
			var texture : Texture = assetManager.getTexture("Ring");
			var img : Image = new Image(texture);
			img.x = 1;
			img.y = 1;
			this.addChild(img);
		}
    	}
}
