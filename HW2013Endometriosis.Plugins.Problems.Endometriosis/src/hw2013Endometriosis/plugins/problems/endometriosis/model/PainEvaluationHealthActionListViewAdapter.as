package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import collaboRhythm.plugins.schedule.shared.model.HealthActionBase;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionListViewAdapter;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionListViewController;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionListViewModel;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;

	import mx.core.IVisualElement;

	import spark.components.Button;

	import spark.components.Image;

	public class PainEvaluationHealthActionListViewAdapter implements IHealthActionListViewAdapter
	{
		public function PainEvaluationHealthActionListViewAdapter(scheduleItemOccurrence:ScheduleItemOccurrence, healthActionModelDetailsProvider:IHealthActionModelDetailsProvider)
		{
			super();
		}

		public function get healthAction():HealthActionBase
		{
			return null;
		}

		public function createImage():Image
		{
			return null;
		}

		public function createCustomView():IVisualElement
		{
			return null;
		}

		public function get name():String
		{
			return "";
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
			return "";
		}

		public function get model():IHealthActionListViewModel
		{
			return null;
		}

		public function get controller():IHealthActionListViewController
		{
			return null;
		}

		public function createCommandButtons():Vector.<Button>
		{
			return null;
		}
	}
}
