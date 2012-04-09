package GameObjects 
{
	/**
	 * ...
	 * @author Kerfilicious
	 */
	public class PowerKing extends GameObject 
	{
		
		public function PowerKing() 
		{
			super();
		}
		
		override protected function render():void
		{
			graphics.beginFill(0x43c43c);
			graphics.drawRect(0, 0, 20, 38);
			graphics.endFill();
		}
		
	}

}