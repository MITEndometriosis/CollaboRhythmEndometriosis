package hw2013Endometriosis.plugins.problems.endometriosis.controller
{
	import collaboRhythm.plugins.schedule.shared.controller.HealthActionInputControllerBase;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionInputController;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.plugins.schedule.shared.model.IScheduleCollectionsProvider;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;

	import flash.events.MouseEvent;

	import flash.net.URLVariables;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.IncisionEvaluationModel;

	import hw2013Endometriosis.plugins.problems.endometriosis.view.IncisionEvaluationView;

	import spark.components.ViewNavigator;

	public class IncisionEvaluationHealthActionInputController extends HealthActionInputControllerBase implements IHealthActionInputController
	{
		private var _viewNavigator:ViewNavigator;
		private var _incisionEvaluationModel:IncisionEvaluationModel;

		public function IncisionEvaluationHealthActionInputController(scheduleItemOccurrence:ScheduleItemOccurrence,
																	  healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
																	  scheduleCollectionsProvider:IScheduleCollectionsProvider,
																	  viewNavigator:ViewNavigator)
		{
			_incisionEvaluationModel = new IncisionEvaluationModel();
			_viewNavigator = viewNavigator
		}

		public function handleHealthActionResult(initiatedLocally:Boolean):void
		{
			_viewNavigator.pushView(IncisionEvaluationView, this);
		}

		public function handleHealthActionSelected():void
		{
			_viewNavigator.pushView(IncisionEvaluationView, this);
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

		public function get model():IncisionEvaluationModel
		{
			return _incisionEvaluationModel;
		}
	}
}
