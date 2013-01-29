package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.plugins.schedule.shared.model.IScheduleCollectionsProvider;
	import collaboRhythm.shared.model.Record;
	import collaboRhythm.shared.model.healthRecord.CodedValue;
	import collaboRhythm.shared.model.healthRecord.DocumentBase;
	import collaboRhythm.shared.model.healthRecord.ValueAndUnit;
	import collaboRhythm.shared.model.healthRecord.document.HealthActionResult;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;
	import collaboRhythm.shared.model.healthRecord.document.healthActionResult.ActionGroupResult;
	import collaboRhythm.shared.model.healthRecord.document.healthActionResult.Measurement;

	import mx.collections.ArrayCollection;

	[Bindable]
	public class PreOpEvaluationModel
	{
		private static const PRE_OP_EVALUATION_RESULT:String = "Vaginal Bleeding Evaluation Result";
		private static const MEASURES_CODED_VALUE_TYPE:String = "http://measures.coded.values/";

		private static const TYPE_CODED_VALUE_TYPE:String = "http://www.w3.org/2001/XMLSchema";

		private var _scheduleItemOccurrence:ScheduleItemOccurrence;
		private var _record:Record;

		private var _activeAccountId:String;


		private var _generalHealth:String;
		private var __generalHealthComparison:String;
		private var _sickTF:String;
		private var _healthyTF:String;
		private var _worseTF:String;
		private var _excellentTF:String;
		private var _activitiesHighLimit:String;
		private var _activitiesModLimit:String;
		private var _liftingLimit:String;
		private var _climbingSeveralLimit:String;
		private var _climbdingOneLimit:String;
		private var _bendingLimit:String;
		private var _walkMileLimit:String;
		private var _walkSeveralLimit:String;
		private var _walkOneLimit:String;
		private var _bathingLimit:String;
		private var _cutTime1:String;
		private var _cutTime2:String;
		private var _accomplishLess1:String;
		private var _accomplishLess2:String;
		private var _limitWork1:String;
		private var _limitWork2:String;
		private var _difficultWork1:String;
		private var _difficultWork2:String;
		private var cutTimeEmo1:String;
		private var _cutTimeEmo2:String;
		private var _accomplishLessEmo1:String;
		private var _accomplishLessEmo2:String;
		private var _limitWorkEmo1:String;
		private var _limitWorkEmo2:String;
		private var _socialPhysical:String;
		private var _painQuantity:String;
		private var _painInterfere:String;
		private var _socialEmo:String;
		private var _pepEnergy:String;
		private var _nervousEnergy:String;
		private var _dumpsEnergy:String;
		private var _calmEnergy:String;
		private var _lotsEnergy:String;
		private var _downBlueEnergy:String;
		private var _wornEnergy:String;
		private var _happyEnergy:String;
		private var _tiredEnergy:String;


		public function PreOpEvaluationModel(scheduleItemOccurrence:ScheduleItemOccurrence,
											 healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
											 scheduleCollectionsProvider:IScheduleCollectionsProvider)
		{
			scheduleItemOccurrence = scheduleItemOccurrence;
			_record = healthActionModelDetailsProvider.record;
			_activeAccountId = healthActionModelDetailsProvider.activeAccount.accountId;

		}

		public function get healthCondition():String
		{
			return _generalHealth;
		}

		public function set healthCondition(text:String):void
		{
			_generalHealth = text;
		}

		public function get healthConditionComparison():String
		{
			return __generalHealthComparison;
		}

		public function set healthConditionComparison(text:String):void
		{
			__generalHealthComparison = text;
		}

		public function saveVaginalBleedingEvaluation():void
		{
			var adherenceResults:Vector.<DocumentBase> = new Vector.<DocumentBase>();

			var healthActionResult:HealthActionResult = new HealthActionResult();

			healthActionResult.name = new CodedValue(null, null, null, PRE_OP_EVALUATION_RESULT);
			healthActionResult.planType = String("prescribed");
			healthActionResult.reportedBy = String("ppeterson@records.mit.edu");
			healthActionResult.dateReported = new Date();

			var actions:ArrayCollection = new ArrayCollection();
			var action:ActionGroupResult = new ActionGroupResult();
			var measurements:ArrayCollection = new ArrayCollection();


//
//					var hasSpottingMeasurement:Measurement = new Measurement();
//					hasSpottingMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has spotting");
//					hasSpottingMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
//					hasSpottingMeasurement.value = new ValueAndUnit(null, null, hasSpotting.toString());
//					measurements.addItem(hasSpottingMeasurement);


			action.measurements = measurements;
			actions.addItem(action);
			healthActionResult.actions = actions;

			adherenceResults.push(healthActionResult);

			_scheduleItemOccurrence.createAdherenceItem(adherenceResults, _record, _activeAccountId, true);
			_record.saveAllChanges();
		}
	}
}
