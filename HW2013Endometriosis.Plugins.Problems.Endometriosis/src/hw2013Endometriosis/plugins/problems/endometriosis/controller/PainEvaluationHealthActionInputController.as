package hw2013Endometriosis.plugins.problems.endometriosis.controller
{
	import collaboRhythm.plugins.schedule.shared.controller.HealthActionInputControllerBase;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionInputController;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.plugins.schedule.shared.model.IScheduleCollectionsProvider;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;

	import flash.events.GestureEvent;

	import flash.events.MouseEvent;
	import flash.net.URLVariables;

	import flashx.textLayout.events.FlowElementMouseEvent;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.PainEvaluationModel;
	import hw2013Endometriosis.plugins.problems.endometriosis.view.PainEvaluationLocationSelectedView;
	import hw2013Endometriosis.plugins.problems.endometriosis.view.PainEvaluationView;

	import j2as3.collection.ArrayList;

	import mx.collections.ArrayList;

	import mx.validators.PhoneNumberValidator;

	import org.osmf.layout.AnchorLayoutMetadata;

	import spark.components.ViewNavigator;

	public class PainEvaluationHealthActionInputController extends HealthActionInputControllerBase implements IHealthActionInputController
	{
		private var _painEvaluationModel:PainEvaluationModel;
		private var _viewNavigator:ViewNavigator;


		public function PainEvaluationHealthActionInputController(scheduleItemOccurrence:ScheduleItemOccurrence,
																  healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
																  scheduleCollectionsProvider:IScheduleCollectionsProvider,
																  viewNavigator:ViewNavigator)
		{
			_painEvaluationModel = new PainEvaluationModel();
			_viewNavigator = viewNavigator
		}

		public function handleHealthActionResult(initiatedLocally:Boolean):void
		{
			_viewNavigator.pushView(PainEvaluationView, this);
		}


		public function handleHealthActionSelected():void
		{
			_viewNavigator.pushView(PainEvaluationView, this);
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

		public function get model():PainEvaluationModel
		{
			return _painEvaluationModel;
		}


		public function updateHasPain(value:Boolean):void
		{
			_painEvaluationModel.hasPain = value;
		}

		public function updateHasShoulderPain(selected:Boolean):void
		{
			_painEvaluationModel.hasShoulderPain = selected
		}

		public function updateHasAbdomenPain(selected:Boolean):void
		{
			_painEvaluationModel.hasAbdomenPain = selected
		}

		public function updateHasPelvisPain(selected:Boolean):void
		{
			_painEvaluationModel.hasPelvisPain = selected
		}

		public function updateHasFlankPain(selected:Boolean):void
		{
			_painEvaluationModel.hasFlankPain = selected
		}

		public function updateHasOtherPain(selected:Boolean):void
		{
			_painEvaluationModel.hasOtherPain = selected
		}

		public function changeScreens():void
		{
			var viewList: Array = ["home",_painEvaluationModel.SHOULDER, _painEvaluationModel.ABDOMEN, _painEvaluationModel.PELVIS, _painEvaluationModel.FLANK, _painEvaluationModel.OTHER];
			var painList: Array = [true, _painEvaluationModel.hasShoulderPain, _painEvaluationModel.hasAbdomenPain, _painEvaluationModel.hasPelvisPain, _painEvaluationModel.hasFlankPain, _painEvaluationModel.hasOtherPain];

			_painEvaluationModel.SCREEN = viewList[viewList.indexOf(_painEvaluationModel.SCREEN) + 1];
			if (_painEvaluationModel.SCREEN == "home")
			{
				_viewNavigator.pushView(PainEvaluationView, this);
			}
			
			if (painList[viewList.indexOf(_painEvaluationModel.SCREEN)])
			{
			_viewNavigator.pushView(PainEvaluationLocationSelectedView, this);
			}

			else
			{
				changeScreens();
			}


		}


	}

}
