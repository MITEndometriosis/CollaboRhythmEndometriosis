package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import flashx.textLayout.formats.Float;

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
			private var _currentPercentage:Number = 0;

			public static const SHOULDER: String = "Shoulder";
			public static const ABDOMEN:String = "Abdomen";
			public static const PELVIS:String = "Pelvis";
			public static const FLANK: String = "Flank";
			public static const HOME: String = "home"
			public static const PAIN_EVALUATION_RESULT: String = "Pain Evaluation Result";
			public var _screen:String = HOME;




			public function PainEvaluationModel()
			{
			}

			public function get screen():String
			{
				return _screen;
			}

			public function set screen(value:String):void
			{
				_screen=value;
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




	}
}

