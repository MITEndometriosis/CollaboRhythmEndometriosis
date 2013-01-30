package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import collaboRhythm.shared.ui.healthCharts.model.descriptors.IChartDescriptor;

	public class HealthActionChartDescriptor implements IChartDescriptor
	{
		private var _healthActionResultCatagory:String;
		public function HealthActionChartDescriptor()
		{
		}

		public function get descriptorKey():String
		{
			return "healthAction_" + _healthActionResultCatagory ;
		}

		public function get healthActionResultCatagory():String
		{
			return _healthActionResultCatagory;
		}

		public function set healthActionResultCatagory(value:String):void
		{
			_healthActionResultCatagory = value;
		}
	}
}
