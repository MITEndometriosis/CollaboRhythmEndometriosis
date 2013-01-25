package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import flash.display.Bitmap;

	import spark.components.Image;
	import spark.skins.mobile.ImageSkin;

	public class PainEvaluationModel
	{
//		[Embed(source="/assets/images/PainLocation.bmp")]
//		public var PainLocationBitMapImageClass:Class;
	private var _hasPain:Boolean = false;

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
	}
}
