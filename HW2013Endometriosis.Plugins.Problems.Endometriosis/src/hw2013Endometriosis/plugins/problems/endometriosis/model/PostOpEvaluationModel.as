package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	[Bindable]
	public class PostOpEvaluationModel
	{
		private var _canUrinate:Boolean;
		private var _showUrinationDetails:Boolean;
		private var _hasUrinationPain:Boolean;
		private var _showHasUrinationPain:Boolean;
		private var _hasNausea:Boolean;
		private var _showHasNausea:Boolean;

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

		public function get hasUrinationPain():Boolean
		{
			return _hasUrinationPain;
		}

		public function set hasUrinationPain(value:Boolean):void
		{
			_hasUrinationPain = value;
			showHasUrinationPain = hasUrinationPain;
		}

		public function get showHasUrinationPain():Boolean
		{
			return _showHasUrinationPain;
		}

		public function set showHasUrinationPain(value:Boolean):void
		{
			_showHasUrinationPain = value;
		}

		public function get hasNausea():Boolean
		{
			return _hasNausea;
		}

		public function set hasNausea(value:Boolean):void
		{
			_hasNausea = value;
			showHasNausea = hasNausea;
		}

		public function get showHasNausea():Boolean
		{
			return _showHasNausea;
		}

		public function set showHasNausea(value:Boolean):void
		{
			_showHasNausea = value;
		}
	}
}
