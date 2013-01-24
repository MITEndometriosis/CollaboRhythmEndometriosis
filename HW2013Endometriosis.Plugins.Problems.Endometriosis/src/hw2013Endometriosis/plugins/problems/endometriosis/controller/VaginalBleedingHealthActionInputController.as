package hw2013Endometriosis.plugins.problems.endometriosis.controller
{
	import collaboRhythm.plugins.schedule.shared.controller.HealthActionInputControllerBase;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionInputController;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionListViewAdapter;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.plugins.schedule.shared.model.IScheduleCollectionsProvider;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;

	import flash.events.MouseEvent;

	import flash.net.URLVariables;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.VaginalBleedingEvaluationModel;

	import spark.components.ViewNavigator;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.VaginalBleedingEvaluationModel;

	import hw2013Endometriosis.plugins.problems.endometriosis.view.VaginalBleedingEvaluationView;

	public class VaginalBleedingHealthActionInputController extends HealthActionInputControllerBase implements IHealthActionInputController
	{
		private var _viewNavigator:ViewNavigator;
		private var _vaginalbleedingEvaluationModel:VaginalBleedingEvaluationModel;

		public function VaginalBleedingHealthActionInputController(scheduleItemOccurrence:ScheduleItemOccurrence,
																   healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
																   scheduleCollectionsProvider:IScheduleCollectionsProvider,
																   viewNavigator:ViewNavigator)
		{
			_vaginalbleedingEvaluationModel = new VaginalBleedingEvaluationModel();
			_viewNavigator = viewNavigator
		}

		public function handleHealthActionResult(initiatedLocally:Boolean):void
		{
		}

		public function handleHealthActionSelected():void
		{
		}

		public function handleUrlVariables(urlVariables:URLVariables):void
		{
		}

		public function get healthActionInputViewClass():Class
		{
			return null;
		}

		public function useDefaultHandleHealthActionResult():Boolean
		{
			return false;
		}

		public function updateDateMeasuredStart(date:Date):void
		{
		}

		public function handleHealthActionCommandButtonClick(event:MouseEvent):void
		{
		}

		public function removeEventListener():void
		{
		}

		public function get model():VaginalBleedingEvaluationModel
		{
			return _vaginalbleedingEvaluationModel;
		}

		public function set model(value:VaginalBleedingEvaluationModel):void
		{
			_vaginalbleedingEvaluationModel = value;
		}

		public function updateHasBleeding(value:Boolean):void
		{
			_vaginalbleedingEvaluationModel.hasBleeding = value;
		}


		public function updateHasBloodClots(value:Boolean):void
		{
			_vaginalbleedingEvaluationModel.hasBloodClots = value;
		}

		public function updateUseFeminineProducts(value:Boolean):void
		{
			_vaginalbleedingEvaluationModel.useFeminineProductsType = value;
		}
	}
}
