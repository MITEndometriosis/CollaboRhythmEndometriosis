package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import collaboRhythm.shared.ui.healthCharts.model.IChartModelDetails;
	import collaboRhythm.shared.ui.healthCharts.model.descriptors.IChartDescriptor;
	import collaboRhythm.shared.ui.healthCharts.model.modifiers.IChartModifier;
	import collaboRhythm.shared.ui.healthCharts.model.modifiers.IChartModifierFactory;

	public class EndometriosisChartModifierFactory implements IChartModifierFactory
	{
		public function EndometriosisChartModifierFactory()
		{
		}

		public function createChartModifier(chartDescriptor:IChartDescriptor, chartModelDetails:IChartModelDetails,
											currentChartModifier:IChartModifier):IChartModifier
		{
			if (chartDescriptor is HealthActionChartDescriptor)
			{
				return new EndometriosisChartModifier(chartDescriptor, chartModelDetails, currentChartModifier);
			}

		}
	}
}
