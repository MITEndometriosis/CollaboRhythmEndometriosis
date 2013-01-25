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
		private var _hasVomited:Boolean;
		private var _showHasVomited:Boolean;
		private var _hasAppetite:Boolean;
		private var _showHasAppetite:Boolean;
		private var _hasBM:Boolean;
		private var _showHasBM:Boolean;
		private var _hasPassedGas:Boolean;
		private var _showHasPassedGas:Boolean;

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

		public function get hasVomited():Boolean
		{
			return _hasVomited;
		}

		public function set hasVomited(value:Boolean):void
		{
			_hasVomited = value;
			showHasVomited = hasVomited;
		}

		public function get showHasVomited():Boolean
		{
			return _showHasVomited;
		}

		public function set showHasVomited(value:Boolean):void
		{
			_showHasVomited = value;
		}

		public function get hasAppetite():Boolean
		{
			return _hasAppetite;
		}

		public function set hasAppetite(value:Boolean):void
		{
			_hasAppetite = value;
			showHasAppetite = hasAppetite;
		}

		public function get showHasAppetite():Boolean
		{
			return _showHasAppetite;
		}

		public function set showHasAppetite(value:Boolean):void
		{
			_showHasAppetite = value;
		}

		public function get hasBM():Boolean
		{
			return _hasBM;
		}

		public function set hasBM(value:Boolean):void
		{
			_hasBM = value;
			showHasBM = hasBM;
		}

		public function get showHasBM():Boolean
		{
			return _showHasBM;
		}

		public function set showHasBM(value:Boolean):void
		{
			_showHasBM = value;
		}

		public function get hasPassedGas():Boolean
		{
			return _hasPassedGas;
		}

		public function set hasPassedGas(value:Boolean):void
		{
			_hasPassedGas = value;
			showHasPassedGas = hasPassedGas;
		}

		public function get showHasPassedGas():Boolean
		{
			return _showHasPassedGas;
		}

		public function set showHasPassedGas(value:Boolean):void
		{
			_showHasPassedGas = value;
		}
	}
}
