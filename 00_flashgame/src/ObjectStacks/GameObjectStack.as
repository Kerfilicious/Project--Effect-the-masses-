package ObjectStacks 
{
	import flash.display.Sprite;
	import GameObjects.GameObject;
	/**
	 * ...
	 * @author Kerfilicious
	 */
	public class GameObjectStack extends Sprite
	{
		
		private var _gameObjectStack:Vector.<GameObject>
		
		public function GameObjectStack() 
		{
			_gameObjectStack = new Vector.<GameObject>;
		}
		
		public function add(object:GameObject):void
		{
			_gameObjectStack.push(object);
			addChild(object);
			
			trace(_gameObjectStack.length);
		}
		
		public function update():void
		{
			for (var i:int = 0; i < _gameObjectStack.length; i++)
			{
				_gameObjectStack[i].update();
			}
		}
		
		public function clear():void
		{
			_gameObjectStack.length = 0;
			
			while (numChildren) removeChildAt(0);
		}
		
	}

}