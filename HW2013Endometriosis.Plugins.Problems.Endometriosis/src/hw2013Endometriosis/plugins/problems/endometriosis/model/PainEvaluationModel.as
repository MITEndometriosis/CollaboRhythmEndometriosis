package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	public class PainEvaluationModel
	{
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
	}
}
