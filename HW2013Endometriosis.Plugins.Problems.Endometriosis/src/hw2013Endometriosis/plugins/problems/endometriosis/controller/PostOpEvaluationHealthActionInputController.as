package hw2013Endometriosis.plugins.problems.endometriosis.controller
{
	import collaboRhythm.plugins.schedule.shared.controller.HealthActionInputControllerBase;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionInputController;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.plugins.schedule.shared.model.IScheduleCollectionsProvider;
	import collaboRhythm.shared.model.healthRecord.CodedValue;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;

	import flash.events.MouseEvent;

	import flash.net.URLVariables;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.PostOpEvaluationModel;

	import hw2013Endometriosis.plugins.problems.endometriosis.view.PostOpEvaluationView;

	import spark.components.ViewNavigator;

	public class PostOpEvaluationHealthActionInputController extends HealthActionInputControllerBase implements IHealthActionInputController
	{
		private var _viewNavigator:ViewNavigator;
		private var _model:PostOpEvaluationModel;

		public function PostOpEvaluationHealthActionInputController(scheduleItemOccurrence:ScheduleItemOccurrence,
																	  healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
																	  scheduleCollectionsProvider:IScheduleCollectionsProvider,
																	  viewNavigator:ViewNavigator)
		{
			_model = new PostOpEvaluationModel();
			_viewNavigator = viewNavigator
		}

		public function handleHealthActionResult(initiatedLocally:Boolean):void
		{
			_viewNavigator.pushView(PostOpEvaluationView, this);
		}

		public function handleHealthActionSelected():void
		{
			_viewNavigator.pushView(PostOpEvaluationView, this);
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

		public function get model():PostOpEvaluationModel
		{
			return _model;
		}

		public function set model(value:PostOpEvaluationModel):void
		{
			_model = value;
		}

		public function updateCanUrinate(value:Boolean):void
		{
			_model.canUrinate = value;
		}

		public function updateUrinationPain(value:Boolean):void
		{
			_model.hasUrinationPain = value;
		}

		public function updateHasNausea(value:Boolean):void
		{
			_model.hasNausea = value;
		}

		public function updateHasVomited(value:Boolean):void
		{
			_model.hasVomited = value;
		}

		public function updateHasAppetite(value:Boolean):void
		{
			_model.hasAppetite = value;
		}

		public function updateHasBM(value:Boolean):void
		{
			_model.hasBM = value;
		}

		public function updateHasPassedGas(value:Boolean):void
		{
			_model.hasPassedGas = value;
		}
	}
}
