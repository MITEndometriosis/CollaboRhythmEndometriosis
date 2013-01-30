package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import collaboRhythm.shared.model.healthRecord.document.VitalSignsModel;
	import collaboRhythm.shared.ui.healthCharts.model.IChartModelDetails;
	import collaboRhythm.shared.ui.healthCharts.model.descriptors.IChartDescriptor;
	import collaboRhythm.shared.ui.healthCharts.model.descriptors.VitalSignChartDescriptor;
	import collaboRhythm.shared.ui.healthCharts.model.modifiers.IChartModifier;
	import collaboRhythm.shared.ui.healthCharts.model.modifiers.IChartModifierFactory;

	import com.theory9.data.types.OrderedMap;

	public class EndometriosisChartModifierFactory implements IChartModifierFactory
	{
		public function EndometriosisChartModifierFactory()
		{
		}

		public function createChartModifier(chartDescriptor:IChartDescriptor, chartModelDetails:IChartModelDetails,
											currentChartModifier:IChartModifier):IChartModifier
		{
			if (chartDescriptor is VitalSignChartDescriptor &&
					(chartDescriptor as VitalSignChartDescriptor).vitalSignCategory ==
							PainEvaluationModel.PAIN_EVALUATION_RESULT)
				return new EndometriosisChartModifier(chartDescriptor, chartModelDetails, currentChartModifier);
			else
				return currentChartModifier;

		}

		public function updateChartDescriptors(chartDescriptors:OrderedMap):OrderedMap
		{
			var chartDescriptor:VitalSignChartDescriptor = new VitalSignChartDescriptor();
			chartDescriptor.vitalSignCategory = PainEvaluationModel.PAIN_EVALUATION_RESULT;
			if (chartDescriptors.getValueByKey(chartDescriptor.descriptorKey) == null)
			{
				chartDescriptors.addKeyValue(chartDescriptor.descriptorKey, chartDescriptor);
			}
			return chartDescriptors;
		}
	}
}
