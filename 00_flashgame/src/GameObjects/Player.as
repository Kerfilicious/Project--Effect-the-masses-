package GameObjects 
{
	/**
	 * ...
	 * @author Kerfilicious
	 */
	public class Player extends GameObject 
	{
		
		public function Player() 
		{
			render();
		}
		
		override protected function render():void
		{
			graphics.beginFill(0x43c433);
			graphics.drawRect(0, 0, 50, 30);
			graphics.endFill();
		}
		
		override public function update():void
		{
			this.x += mouseX - this.width / 2;
		}
		
	}

}