package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	[Bindable]
	public class IncisionEvaluationModel
	{
		private var _hasRedness:Boolean;
		private var _showRednessDetails:Boolean;
		private var _hasTenderness:Boolean;
		private var _showTendernessDetails:Boolean;
		private var _hasDischarge:Boolean;
		private var _showDischargeDetails:Boolean;

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

		public function get hasTenderness():Boolean
		{
			return _hasTenderness;
		}

		public function set hasTenderness(value:Boolean):void
		{
			_hasTenderness = value;
			showTendernessDetails = hasTenderness;
		}

		public function get showTendernessDetails():Boolean
		{
			return _showTendernessDetails;
		}

		public function set showTendernessDetails(value:Boolean):void
		{
			_showTendernessDetails = value;
		}

		public function get hasDischarge():Boolean
		{
			return _hasDischarge;
		}

		public function set hasDischarge(value:Boolean):void
		{
			_hasDischarge = value;
			showDischargeDetails = hasDischarge;
		}

		public function get showDischargeDetails():Boolean
		{
			return _showDischargeDetails;
		}

		public function set showDischargeDetails(value:Boolean):void
		{
			_showDischargeDetails = value;
		}
	}
}
