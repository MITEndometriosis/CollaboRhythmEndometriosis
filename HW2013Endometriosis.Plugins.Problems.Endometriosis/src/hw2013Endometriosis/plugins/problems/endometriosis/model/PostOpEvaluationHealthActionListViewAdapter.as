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

	public class PostOpEvaluationHealthActionListViewAdapter implements IHealthActionListViewAdapter
	{
		[Embed(source="/assets/images/stethoscope100.png")]
		public var starImageClass:Class;
		private var _scheduleItemOccurrence:ScheduleItemOccurrence;
		private var _healthActionSchedule:HealthActionSchedule;

		private var _postOpEvaluationHealthAction:HealthActionBase;
		private var _model:HealthActionListViewModelBase;
		private var _controller:HealthActionListViewControllerBase;

		public function PostOpEvaluationHealthActionListViewAdapter(scheduleItemOccurrence:ScheduleItemOccurrence,
														  healthActionModelDetailsProvider:IHealthActionModelDetailsProvider)
		{
			if (scheduleItemOccurrence)
			{
				_scheduleItemOccurrence = scheduleItemOccurrence;
				_healthActionSchedule = scheduleItemOccurrence.scheduleItem as HealthActionSchedule;

				_postOpEvaluationHealthAction = new HealthActionBase(EndometriosisModel.POST_OP_EVALUATION_HEALTH_ACTION_SCHEDULE_TYPE,
						_healthActionSchedule.name.text);

				_model = new HealthActionListViewModelBase(scheduleItemOccurrence, healthActionModelDetailsProvider);
			}
		}

		public function get healthAction():HealthActionBase
		{
			return _postOpEvaluationHealthAction;
		}

		public function createImage():Image
		{
			var postOpEvaluationImage:Image = new Image();
			postOpEvaluationImage.setStyle("skinClass", ImageSkin);
			postOpEvaluationImage.source = starImageClass;

			return postOpEvaluationImage;
		}

		public function createCustomView():IVisualElement
		{
			return null;
		}

		public function get name():String
		{
			return "Post-Op Evaluation";
		}

		public function get description():String
		{
			return "General Healing Check-in";
		}

		public function get indication():String
		{
			return "";
		}

		public function get primaryInstructions():String
		{
			return "Evaluate normal bodily";
		}

		public function get secondaryInstructions():String
		{
			return "functions";
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
