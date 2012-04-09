package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import GameObjects.GameObject;
	import GameObjects.Player;
	import ObjectStacks.GameObjectStack;
	
	[SWF(width = "500", height = "800", pageTitle = "Free Fall")]
	
	public class Main extends Sprite 
	{
		
		private var _backgroundGfx:BgGfx;
		private var _gameObjectStack:GameObjectStack;
		private var _stageObjectsStack:Vector.<Sprite>;
		private var _gameObject:GameObject;
		private var _powerKing:GameObject;
		private var _player:Player;
		
		private var _curHeight:int = 10000;
		
		public function Main():void 
		{
			stage.frameRate = 30;
			
			_initGameStage();
		}
		
		private function handleEnterFrameEvent(e:Event):void 
		{
			if (_curHeight < 800) trace("crash");
			else _backgroundGfx.y -= 30, _curHeight -= 30;
			
			_gameObjectStack.update();
			
			_player.update();
			
			if (_gameObjectStack.hitTestObject(_player)) trace("_player gained SUPAH SPEED!");
			
		}
		
		private function _initGameStage():void
		{
			_backgroundGfx = new BgGfx();
			addChild(_backgroundGfx);
			_backgroundGfx.addEventListener(Event.ENTER_FRAME, handleEnterFrameEvent);
			
			_player = new Player();
			_player.x = stage.stageWidth / 2 - _player.width;
			_player.y = 300;
			addChild(_player);
			
			_gameObjectStack = new GameObjectStack();
			addChild(_gameObjectStack);
			
			for (var i:int = 0; i < 100; i++)
			{
				_powerKing = new GameObject(); 
				_powerKing.x = Math.random() * 500;
				_powerKing.y = Math.random() * 10000 + stage.stageHeight;
				_gameObjectStack.add(_powerKing);
			}
		}
		
		private function _resetGameStage():void
		{
			_backgroundGfx.y = 0;
			
			removeChild(_player);
		
		}
		
	}
	
}