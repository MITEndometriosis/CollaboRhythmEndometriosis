package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import collaboRhythm.shared.model.healthRecord.document.HealthActionResult;
	import collaboRhythm.shared.ui.healthCharts.model.IChartModelDetails;
	import collaboRhythm.shared.ui.healthCharts.model.descriptors.IChartDescriptor;
	import collaboRhythm.shared.ui.healthCharts.model.modifiers.ChartModifierBase;
	import collaboRhythm.shared.ui.healthCharts.model.modifiers.IChartModifier;

	import com.dougmccune.controls.ScrubChart;
	import com.dougmccune.controls.SeriesDataSet;
	import com.theory9.data.types.OrderedMap;

	import hw2013Endometriosis.plugins.problems.endometriosis.controller.PainProxy;

	import mx.charts.HitData;
	import mx.charts.chartClasses.CartesianChart;
	import mx.charts.chartClasses.Series;
	import mx.charts.series.BubbleSeries;
	import mx.collections.ArrayCollection;
	import mx.core.IVisualElement;
	import mx.graphics.SolidColor;
	import mx.graphics.SolidColorStroke;

	import qs.charts.dataShapes.DataDrawingCanvas;

	import spark.components.Label;

	public class EndometriosisChartModifier extends ChartModifierBase implements IChartModifier
	{
		public function EndometriosisChartModifier(chartDescriptor:IChartDescriptor,
												   chartModelDetails:IChartModelDetails,
												   decoratedChartModifier:IChartModifier)
		{
			super(chartDescriptor, chartModelDetails, decoratedChartModifier);
		}

		public function get healthActionChartDescriptor():HealthActionChartDescriptor
		{
			return chartDescriptor as HealthActionChartDescriptor;
		}

		public function endometriosisChart_dataTipFunction(hitData:HitData):String
		{
			var proxy:PainProxy = hitData.item as PainProxy;
						if (proxy)
						{
							return (hitData.chartItem.element as Series).displayName + "<br/>" +
									"<b>" + proxy.painLocation + "pain" + "</b>" + "Aggravating Factors: " + proxy.painAggravatingFactors + "<br/>" +
									"Alleviating Factors: " + proxy.painAlleviatingFactors + "<br/>" +
									"Date measured: " + proxy.dateReported.toLocaleString();
						}
						return hitData.displayText;
		}

		public function modifyCartesianChart(chart:ScrubChart, cartesianChart:CartesianChart, isMainChart:Boolean):void
		{
		}

		public function createMainChartSeriesDataSets(chart:ScrubChart,
													  seriesDataSets:Vector.<SeriesDataSet>):Vector.<SeriesDataSet>
		{
			var healthActionResultsCollection:ArrayCollection = chartModelDetails.record.healthActionResultsModel.documents;
			var seriesDataCollection:ArrayCollection = new ArrayCollection();

			for each (var healthActionResult:HealthActionResult in healthActionResultsCollection)
			{
				if (healthActionResult.name.text == PainEvaluationModel.PAIN_EVALUATION_RESULT)
				{
					var proxy:PainProxy = new PainProxy(healthActionResult);
					seriesDataCollection.addItem(proxy);
				}
			}

			var series:BubbleSeries;

			series = new BubbleSeries();
			series.name = "painEvalutation";
			series.id = chart.id + "_painEvaluationSeries";
			series.xField = "dateReported";
			series.yField = "painLocation";
			series.radiusField = "painIntensity";
			series.dataProvider = seriesDataCollection;
			series.displayName = "Pain Evaluation";
			series.filterDataValues = "none";
			series.setStyle("stroke", new SolidColorStroke(0x224488, 2));
			series.setStyle("fill", new SolidColor(0xFF0000));
			seriesDataSets.push(new SeriesDataSet(series, seriesDataCollection, "dateReported"));

			return seriesDataSets;
		}

		public function createImage(currentChartImage:IVisualElement):IVisualElement
		{
			return null;
		}

		public function drawBackgroundElements(canvas:DataDrawingCanvas, zoneLabel:Label):void
		{
		}

		public function updateChartDescriptors(chartDescriptors:OrderedMap):OrderedMap
		{
			return chartDescriptors;
		}
	}
}
