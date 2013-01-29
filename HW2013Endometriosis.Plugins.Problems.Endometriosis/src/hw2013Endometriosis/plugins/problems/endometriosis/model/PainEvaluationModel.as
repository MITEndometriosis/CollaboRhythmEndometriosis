package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import mx.collections.ArrayList;

	public class PainEvaluationModel
	{
//		[Embed(source="/assets/images/PainLocation.bmp")]
//		public var PainLocationBitMapImageClass:Class;
		private var _hasPain:Boolean = false;
		private var _hasShoulderPain:Boolean = false;
		private var _hasAbdomenPain:Boolean = false;
		private var _hasPelvisPain:Boolean = false;
		private var _hasFlankPain:Boolean = false;
		private var _currentPercentage:int = 0;

		public var SHOULDER: String = "Shoulder";
	    public var ABDOMEN:String = "Abdomen";
        public var PELVIS:String = "Pelvis";
	    public var FLANK: String = "Flank";

		public var HOME: String = "home"
		public var SCREEN:String = HOME;




		public function PainEvaluationModel()
		{
		}

		public function get hasPain():Boolean
		{
			return _hasPain;
		}

		public function set hasPain(value:Boolean):void
		{
			_hasPain = value;
		}

//		public function createLocationBitmapImage():Bitmap
//		{
//			var painLocationBitMapImage:Bitmap = new Bitmap();
//
//
//			return painLocationBitMapImage;
//		}
		public function get hasShoulderPain():Boolean
		{
			return _hasShoulderPain;
		}

		public function set hasShoulderPain(value:Boolean):void
		{
			_hasShoulderPain = value;
		}

		public function get hasAbdomenPain():Boolean
		{
			return _hasAbdomenPain;
		}

		public function set hasAbdomenPain(value:Boolean):void
		{
			_hasAbdomenPain = value;
		}

		public function get hasPelvisPain():Boolean
		{
			return _hasPelvisPain;
		}

		public function set hasPelvisPain(value:Boolean):void
		{
			_hasPelvisPain = value;
		}

		public function get hasFlankPain():Boolean
		{
			return _hasFlankPain;
		}

		public function set hasFlankPain(value:Boolean):void
		{
			_hasFlankPain = value;
		}


		public function get currentPercentage():int
		{
			return _currentPercentage;
		}

		public function set currentPercentage(value:int):void
		{
			_currentPercentage = value;
		}



		public function CalculatenumScreens():int
		{ var value: int = 1;
			var hasPainArray: Array = [_hasAbdomenPain, _hasFlankPain, _hasPelvisPain, _hasShoulderPain];
			var a:Boolean;

			for (a in hasPainArray)
			{
				if (a)
				{value= value +1;
				}
			}

			return value;
		}
	}
}

