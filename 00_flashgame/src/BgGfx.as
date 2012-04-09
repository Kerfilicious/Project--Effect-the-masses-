package  
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Kerfilicious
	 */
	public class BgGfx extends Sprite 
	{
		private var _bg:Background;
		private var _ground:Sprite;
		private var _mask:Sprite;
		private var _container:Sprite;
		
		public function BgGfx() 
		{
			_render();
		}
		
		private function _render():void
		{
			_container = new Sprite();
			_bg = new Background();
			_bg.height = 10000;
			
			_ground = new Sprite();
			_ground.graphics.beginFill(0x5D1919);
			_ground.graphics.drawRect(0, _bg.height - 50, _bg.width, 50);
			_ground.graphics.endFill();
			
			addChild(_container);
			_container.addChild(_bg);
			_container.addChild(_ground);
			
			_mask = new Sprite();
			_mask.graphics.beginFill(0, 0);
			_mask.graphics.drawRect(0, 0, 500, 800);
			_mask.graphics.endFill();
			
			_container.mask = _mask;
			
		}
		
	}

}