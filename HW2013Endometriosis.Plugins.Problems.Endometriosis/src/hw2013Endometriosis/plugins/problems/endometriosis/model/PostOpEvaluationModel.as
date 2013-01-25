package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	[Bindable]
	public class PostOpEvaluationModel
	{
		private var _canUrinate:Boolean;
		private var _showUrinationDetails:Boolean;

		public function PostOpEvaluationModel()
		{
		}

		public function get canUrinate():Boolean
		{
			return _canUrinate;
		}

		public function set canUrinate(value:Boolean):void
		{
			_canUrinate = value;
			showUrinationDetails = canUrinate;
		}

		public function get showUrinationDetails():Boolean
		{
			return _showUrinationDetails;
		}

		public function set showUrinationDetails(value:Boolean):void
		{
			_showUrinationDetails = value;
		}

	}
}
