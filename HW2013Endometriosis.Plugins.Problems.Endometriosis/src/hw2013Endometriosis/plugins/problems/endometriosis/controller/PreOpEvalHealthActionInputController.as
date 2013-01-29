package hw2013Endometriosis.plugins.problems.endometriosis.controller
{
	import collaboRhythm.plugins.schedule.shared.controller.HealthActionInputControllerBase;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionInputController;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.plugins.schedule.shared.model.IScheduleCollectionsProvider;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;

	import flash.events.MouseEvent;

	import flash.net.URLVariables;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.PreOpEvaluationModel;
	import hw2013Endometriosis.plugins.problems.endometriosis.model.PreOpEvaluationModel;
	import hw2013Endometriosis.plugins.problems.endometriosis.view.PreOpEvaluationView;

	import spark.components.ViewNavigator;


	//trying to fix version control error again
	public class PreOpEvalHealthActionInputController extends HealthActionInputControllerBase implements IHealthActionInputController
	{
		private var _viewNavigator:ViewNavigator;
		private var _model:PreOpEvaluationModel;

		public function PreOpEvalHealthActionInputController(scheduleItemOccurrence:ScheduleItemOccurrence,
															 healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
															 scheduleCollectionsProvider:IScheduleCollectionsProvider,
															 viewNavigator:ViewNavigator)
		{
			_model = new PreOpEvaluationModel(scheduleItemOccurrence, healthActionModelDetailsProvider,
					scheduleCollectionsProvider);
			_viewNavigator = viewNavigator
		}

		public function handleHealthActionResult(initiatedLocally:Boolean):void
		{
			_viewNavigator.pushView(PreOpEvaluationView, this);
		}

		public function handleHealthActionSelected():void
		{
			_viewNavigator.pushView(PreOpEvaluationView, this);
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

		public function get model():PreOpEvaluationModel
		{
			return _model;
		}

		public function set model(value:PreOpEvaluationModel):void
		{
			_model = value;
		}



		public function updategeneralHealth(text:String):void
		{
			model.generalHealth = text;
		}

		public function updategeneralHealthComparison(text:String):void
		{
			model.generalHealthComparison = text;
		}

		public function updatesickTF(text:String):void
		{
			model.sickTF = text;
		}


		public function updatehealthyTF(text:String):void
		{
			model.healthyTF = text;
		}

		public function updateworseTF(text:String):void
		{
			model.worseTF = text;
		}

		public function updateexcellentTF(text:String):void
		{
			model.excellentTF = text;
		}


		public function updateactivitiesHighLimit(text:String):void
		{
			model.activitiesHighLimit = text;
		}

		public function updateactivitiesModLimit(text:String):void
		{
			model.activitiesModLimit = text;
		}

		public function updateliftingLimit(text:String):void
		{
			model.liftingLimit = text;
		}

		public function updateclimbingSeveralLimit(text:String):void
		{
			model.climbingSeveralLimit = text;
		}


		public function updateclimbingOneLimit(text:String):void
		{
			model.climbingOneLimit = text;
		}


		public function updatebendingLimit(text:String):void
		{
			model.bendingLimit = text;
		}

		public function updatewalkMileLimit(text:String):void
		{
			model.walkMileLimit = text;
		}

		public function updatewalkSeveralLimit(text:String):void
		{
			model.walkSeveralLimit = text;
		}

		public function updatewalkOneLimit(text:String):void
		{
			model.walkOneLimit = text;
		}


		public function updatebathingLimit(text:String):void
		{
			model.bathingLimit = text;
		}

		public function updatecutTime1(text:String):void
		{
			model.cutTime1 = text;
		}


		public function updatecutTime2(text:String):void
		{
			model.cutTime2 = text;
		}


		public function updateaccomplishLess1(text:String):void
		{
			model.accomplishLess1 = text;
		}


		public function updateaccomplishLess2(text:String):void
		{
			model.accomplishLess2 = text;
		}


		public function updatelimitWork1(text:String):void
		{
			model.limitWork1 = text;
		}


		public function updatelimitWork2(text:String):void
		{
			model.limitWork2 = text;
		}


		public function updatedifficultWork1(text:String):void
		{
			model.difficultWork1 = text;
		}

		public function updatedifficultWork2(text:String):void
		{
			model.difficultWork2 = text;
		}

		public function updatecutTimeEmo1(text:String):void
		{
			model.cutTimeEmo1 = text;
		}

		public function updatecutTimeEmo2(text:String):void
		{
			model.cutTimeEmo2 = text;
		}


		public function updateaccomplishLessEmo1(text:String):void
		{
			model.accomplishLessEmo1 = text;
		}

		public function updateaccomplishLessEmo2(text:String):void
		{
			model.accomplishLessEmo2 = text;
		}


		public function updatelimitWorkEmo1(text:String):void
		{
			model.limitWorkEmo1 = text;
		}

		public function updatelimitWorkEmo2(text:String):void
		{
			model.limitWorkEmo2 = text;
		}

		public function updatesocialPhysical(text:String):void
		{
			model.socialPhysical = text;
		}

		public function updatepainQuantity(text:String):void
		{
			model.painQuantity = text;
		}

		public function updatepainInterfere(text:String):void
		{
			model.painInterfere = text;
		}

		public function updatesocialEmo(text:String):void
		{
			model.socialEmo = text;
		}


		public function updatepepEnergy(text:String):void
		{
			model.pepEnergy = text;
		}

		public function updatenervousEnergy(text:String):void
		{
			model.nervousEnergy = text;
		}

		public function updatedumpsEnergy(text:String):void
		{
			model.dumpsEnergy = text;
		}

		public function updatecalmEnergy(text:String):void
		{
			model.calmEnergy = text;
		}

		public function updatelotsEnergy(text:String):void
		{
			model.lotsEnergy = text;
		}

		public function updatedownBlueEnergy(text:String):void
		{
			model.downBlueEnergy = text;
		}


		public function updatewornEnergy(text:String):void
		{
			model.wornEnergy = text;
		}


		public function updatehappyEnergy(text:String):void
		{
			model.happyEnergy = text;
		}


		public function updatetiredEnergy(text:String):void
		{
			model..tiredEnergy = text;
		}

		public function savePreOpEvalution():void
		{
					model.savePreOpEvaluation();
			_viewNavigator.popView();
		}
	}
}
