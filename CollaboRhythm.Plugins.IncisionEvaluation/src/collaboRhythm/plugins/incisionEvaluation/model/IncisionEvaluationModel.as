package collaboRhythm.plugins.incisionEvaluation.model
{
	[Bindable]
	public class IncisionEvaluationModel
	{
		private var _hasRedness:Boolean;
		private var _showRednessDetails:Boolean;

		public function IncisionEvaluationModel()
		{
		}

		public function get hasRedness():Boolean
		{
			return _hasRedness;
		}

		public function set hasRedness(value:Boolean):void
		{
			_hasRedness = value;
			showRednessDetails = hasRedness;
		}

		public function get showRednessDetails():Boolean
		{
			return _showRednessDetails;
		}

		public function set showRednessDetails(value:Boolean):void
		{
			_showRednessDetails = value;
		}
	}
}
