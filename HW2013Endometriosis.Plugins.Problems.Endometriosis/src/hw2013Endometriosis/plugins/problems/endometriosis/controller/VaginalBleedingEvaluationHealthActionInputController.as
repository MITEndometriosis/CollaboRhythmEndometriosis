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

	public class VaginalBleedingEvaluationHealthActionInputController extends HealthActionInputControllerBase implements IHealthActionInputController
	{
		private var _viewNavigator:ViewNavigator;
		private var _model:VaginalBleedingEvaluationModel;

		public function VaginalBleedingEvaluationHealthActionInputController(scheduleItemOccurrence:ScheduleItemOccurrence,
																			 healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
																			 scheduleCollectionsProvider:IScheduleCollectionsProvider,
																			 viewNavigator:ViewNavigator)
		{
			_model = new VaginalBleedingEvaluationModel(scheduleItemOccurrence, healthActionModelDetailsProvider,
					scheduleCollectionsProvider);
			_viewNavigator = viewNavigator
		}

		public function handleHealthActionResult(initiatedLocally:Boolean):void
		{
			_viewNavigator.pushView(VaginalBleedingEvaluationView, this);
		}

		public function handleHealthActionSelected():void
		{
			_viewNavigator.pushView(VaginalBleedingEvaluationView, this);
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
			return _model;
		}

		public function set model(value:VaginalBleedingEvaluationModel):void
		{
			_model = value;
		}


		public function updateHasBleeding(value:Boolean):void
		{
			_model.hasBleeding = value;
		}


		public function updateHasBloodClots(value:Boolean):void
		{
			_model.hasBloodClots = value;
		}

		public function updateUseFeminineProducts(value:Boolean):void
		{
			_model.useFeminineProducts = value;
		}

		public function saveVaginalBleedingEvalution():void
		{
			_model.saveVaginalBleedingEvaluation();
		}
	}
}

