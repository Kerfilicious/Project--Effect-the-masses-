package GameObjects 
{
	import flash.display.Sprite;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Kerfilicious
	 */
	public class GameObject extends Sprite
	{
		
		protected var drag:Number = 0.5;
		protected var _velocity:Point;
		
		public function GameObject() 
		{
			render();
			_velocity = new Point();
		}
		
		protected function render():void
		{
			graphics.beginFill(0x43c43c);
			graphics.drawCircle(0, 0, 20);
			graphics.endFill();
		}
		
		public function update():void
		{

			y -= 35;
		}
		
	}

}