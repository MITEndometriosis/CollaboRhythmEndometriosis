package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import collaboRhythm.plugins.schedule.shared.controller.HealthActionInputControllerBase;
	import collaboRhythm.plugins.schedule.shared.controller.HealthActionListViewControllerBase;
	import collaboRhythm.plugins.schedule.shared.model.EquipmentHealthAction;
	import collaboRhythm.plugins.schedule.shared.model.HealthActionBase;
	import collaboRhythm.plugins.schedule.shared.model.HealthActionListViewModelBase;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionListViewAdapter;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionListViewController;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionListViewModel;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.shared.model.healthRecord.document.Equipment;
	import collaboRhythm.shared.model.healthRecord.document.HealthActionSchedule;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;

	import mx.core.IVisualElement;

	import spark.components.Button;

	import spark.components.Image;
	import spark.skins.spark.ImageSkin;

	public class IncisionEvaluationHealthActionListViewAdapter implements IHealthActionListViewAdapter
	{
		[Embed(source="/assets/images/bandaid100.png")]
		public var stitchesImageClass:Class;
		private var _scheduleItemOccurrence:ScheduleItemOccurrence;
		private var _healthActionSchedule:HealthActionSchedule;

		private var _incisionEvaluationHealthAction:HealthActionBase;
		private var _model:HealthActionListViewModelBase;
		private var _controller:HealthActionListViewControllerBase;

		public function IncisionEvaluationHealthActionListViewAdapter(scheduleItemOccurrence:ScheduleItemOccurrence,
																	  healthActionModelDetailsProvider:IHealthActionModelDetailsProvider)
		{
			if (scheduleItemOccurrence)
			{
				_scheduleItemOccurrence = scheduleItemOccurrence;
				_healthActionSchedule = scheduleItemOccurrence.scheduleItem as HealthActionSchedule;

				_incisionEvaluationHealthAction = new HealthActionBase(EndometriosisModel.INCISION_EVALUATION_HEALTH_ACTION_SCHEDULE_TYPE, _healthActionSchedule.name.text);

				_model = new HealthActionListViewModelBase(scheduleItemOccurrence, healthActionModelDetailsProvider);
			}
		}

		public function get healthAction():HealthActionBase
		{
			return _incisionEvaluationHealthAction;
		}

		public function createImage():Image
		{
			var incisionEvaluationImage:Image = new Image();
			incisionEvaluationImage.setStyle("skinClass", ImageSkin);
			incisionEvaluationImage.source = stitchesImageClass;

			return incisionEvaluationImage;
		}

		public function createCustomView():IVisualElement
		{
			return null;
		}

		public function get name():String
		{
			return "Incision Evaluation";
		}

		public function get description():String
		{
			return "";
		}

		public function get indication():String
		{
			return "";
		}

		public function get primaryInstructions():String
		{
			return "";
		}

		public function get secondaryInstructions():String
		{
			return "";
		}

		public function get instructionalVideoPath():String
		{
			return "";
		}

		public function set instructionalVideoPath(value:String):void
		{
		}

		public function get additionalAdherenceInformation():String
		{
			return "...";
		}

		public function get model():IHealthActionListViewModel
		{
			return _model;
		}

		public function get controller():IHealthActionListViewController
		{
			if (!_controller)
			{
				_controller = new HealthActionListViewControllerBase(_model);
			}
			return _controller;
		}

		public function createCommandButtons():Vector.<Button>
		{
			return null;
		}
	}
}
