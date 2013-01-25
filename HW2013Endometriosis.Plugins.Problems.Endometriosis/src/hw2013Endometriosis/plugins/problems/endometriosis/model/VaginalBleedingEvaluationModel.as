package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	public class VaginalBleedingEvaluationModel
	{
		private var _hasBleeding:Boolean;
		private var _showBleedingColor:Boolean;
		private var _hasBloodClots:Boolean;
		private var _showBloodClotSize:Boolean;
		private var _useFeminineProducts:Boolean;
		private var _showFeminineProductsType:Boolean;
		private var _showFeminineProductsNum:Boolean;

		public function VaginalBleedingEvaluationModel()
		{
		}

		public function get hasBleeding():Boolean
		{
			return _hasBleeding;
		}

		public function set hasBleeding(value:Boolean):void
		{
			_hasBleeding = value;
			showBleedingColor = hasBleeding;
		}

		public function get showBleedingColor():Boolean
		{
			return _showBleedingColor;
		}

		public function set showBleedingColor(value:Boolean):void
		{
			_showBleedingColor = value;
		}

		public function get hasBloodClots():Boolean
		{
			return _hasBloodClots;
		}

		public function set hasBloodClots(value:Boolean):void
		{
			_hasBloodClots = value;
			showBloodClotSize = hasBloodClots;
		}

		public function get showBloodClotSize():Boolean
		{
			return _showBloodClotSize;
		}

		public function set showBloodClotSize(value:Boolean):void
		{
			_showBloodClotSize = value;
		}

		public function get useFeminineProducts():Boolean
		{
			return _useFeminineProducts;
		}

		public function set useFeminineProducts(value:Boolean):void
		{
			_useFeminineProducts = value;
			showFeminineProductsTypes = useFeminineProducts;
			showFeminineProductsNum = useFeminineProducts;
		}

		public function get showFeminineProductsTypes():Boolean
		{
			return _showFeminineProductsType;
		}

		public function set showFeminineProductsTypes(value:Boolean):void
		{
			_showFeminineProductsType = value;
		}

		public function get showFeminineProductsNum():Boolean
		{
			return _showFeminineProductsNum;
		}

		public function set showFeminineProductsNum(value:Boolean):void
		{
			_showFeminineProductsNum = value;
		}
	}
}
