package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.plugins.schedule.shared.model.IScheduleCollectionsProvider;
	import collaboRhythm.shared.model.Record;
	import collaboRhythm.shared.model.healthRecord.CollaboRhythmCodedValue;
	import collaboRhythm.shared.model.healthRecord.DocumentBase;
	import collaboRhythm.shared.model.healthRecord.CollaboRhythmValueAndUnit;
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
		private var _generalHealthComparison:String;
		private var _sickTF:String;
		private var _healthyTF:String;
		private var _worseTF:String;
		private var _excellentTF:String;
		private var _activitiesHighLimit:String;
		private var _activitiesModLimit:String;
		private var _liftingLimit:String;
		private var _climbingSeveralLimit:String;
		private var _climbingOneLimit:String;
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
		private var _cutTimeEmo1:String;
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

		public function get generalHealth():String
		{
			return _generalHealth;
		}

		public function set generalHealth(text:String):void
		{
			_generalHealth = text;
		}

		public function get generalHealthComparison():String
		{
			return _generalHealthComparison;
		}

		public function set generalHealthComparison(text:String):void
		{
			_generalHealthComparison = text;
		}

		public function get sickTF():String
		{
			return _sickTF;
		}

		public function set sickTF(text:String):void
		{
			_sickTF = text;
		}

		public function get healthyTF():String
		{
			return _healthyTF;
		}

		public function set healthyTF(text:String):void
		{
			_healthyTF = text;
		}

		public function get worseTF():String
		{
			return _worseTF;
		}

		public function set worseTF(text:String):void
		{
			_worseTF = text;
		}

		public function get excellentTF():String
		{
			return _excellentTF;
		}

		public function set excellentTF(text:String):void
		{
			_excellentTF = text;
		}

		public function get activitiesHighLimit():String
		{
			return _activitiesHighLimit;
		}

		public function set activitiesHighLimit(text:String):void
		{
			_activitiesHighLimit = text;
		}

		public function get activitiesModLimit():String
		{
			return _activitiesModLimit;
		}

		public function set activitiesModLimit(text:String):void
		{
			_activitiesModLimit = text;
		}

		public function get liftingLimit():String
		{
			return _liftingLimit;
		}

		public function set liftingLimit(text:String):void
		{
			_liftingLimit = text;
		}

		public function get climbingSeveralLimit():String
		{
			return _climbingSeveralLimit;
		}

		public function set climbingSeveralLimit(text:String):void
		{
			_climbingSeveralLimit = text;
		}

		public function get climbingOneLimit():String
		{
			return _climbingOneLimit;
		}

		public function set climbingOneLimit(text:String):void
		{
			_climbingOneLimit = text;
		}

		public function get bendingLimit():String
		{
			return _bendingLimit;
		}

		public function set bendingLimit(text:String):void
		{
			_bendingLimit = text;
		}

		public function get walkMileLimit():String
		{
			return _walkMileLimit;
		}

		public function set walkMileLimit(text:String):void
		{
			_walkMileLimit = text;
		}

		public function get walkSeveralLimit():String
		{
			return _walkSeveralLimit;
		}

		public function set walkSeveralLimit(text:String):void
		{
			_walkSeveralLimit = text;
		}

		public function get walkOneLimit():String
		{
			return _walkOneLimit;
		}

		public function set walkOneLimit(text:String):void
		{
			_walkOneLimit = text;
		}

		public function get bathingLimit():String
		{
			return _bathingLimit;
		}

		public function set bathingLimit(text:String):void
		{
			_bathingLimit = text;
		}

		public function get cutTime1():String
		{
			return _cutTime1;
		}

		public function set cutTime1(text:String):void
		{
			_cutTime1 = text;
		}

		public function get cutTime2():String
		{
			return _cutTime2;
		}

		public function set cutTime2(text:String):void
		{
			_cutTime2 = text;
		}

		public function get accomplishLess1():String
		{
			return _accomplishLess1;
		}

		public function set accomplishLess1(text:String):void
		{
			_accomplishLess1 = text;
		}

		public function get accomplishLess2():String
		{
			return _accomplishLess2;
		}

		public function set accomplishLess2(text:String):void
		{
			_accomplishLess2 = text;
		}

		public function get limitWork1():String
		{
			return _limitWork1;
		}

		public function set limitWork1(text:String):void
		{
			_limitWork1 = text;
		}

		public function get limitWork2():String
		{
			return _limitWork2;
		}

		public function set limitWork2(text:String):void
		{
			_limitWork2 = text;
		}

		public function get difficultWork1():String
		{
			return _difficultWork1;
		}

		public function set difficultWork1(text:String):void
		{
			_difficultWork1 = text;
		}

		public function get difficultWork2():String
		{
			return _difficultWork2;
		}

		public function set difficultWork2(text:String):void
		{
			_difficultWork2 = text;
		}

		public function get cutTimeEmo1():String
		{
			return _cutTimeEmo1;
		}

		public function set cutTimeEmo1(text:String):void
		{
			_cutTimeEmo1 = text;
		}

		public function get cutTimeEmo2():String
		{
			return _cutTimeEmo2;
		}

		public function set cutTimeEmo2(text:String):void
		{
			_cutTimeEmo2 = text;
		}

		public function get accomplishLessEmo1():String
		{
			return _accomplishLessEmo1;
		}

		public function set accomplishLessEmo1(text:String):void
		{
			_accomplishLessEmo1 = text;
		}

		public function get accomplishLessEmo2():String
		{
			return _accomplishLessEmo2;
		}

		public function set accomplishLessEmo2(text:String):void
		{
			_accomplishLessEmo2 = text;
		}

		public function get limitWorkEmo1():String
		{
			return _limitWorkEmo1;
		}

		public function set limitWorkEmo1(text:String):void
		{
			_limitWorkEmo1 = text;
		}

		public function get limitWorkEmo2():String
		{
			return _limitWorkEmo2;
		}

		public function set limitWorkEmo2(text:String):void
		{
			_limitWorkEmo2 = text;
		}

		public function get socialPhysical():String
		{
			return _socialPhysical;
		}

		public function set socialPhysical(text:String):void
		{
			_socialPhysical = text;
		}

		public function get painQuantity():String
		{
			return _painQuantity;
		}

		public function set painQuantity(text:String):void
		{
			_painQuantity = text;
		}

		public function get painInterfere():String
		{
			return _painInterfere;
		}

		public function set painInterfere(text:String):void
		{
			_painInterfere = text;
		}

		public function get socialEmo():String
		{
			return _socialEmo;
		}

		public function set socialEmo(text:String):void
		{
			_socialEmo = text;
		}

		public function get pepEnergy():String
		{
			return _pepEnergy;
		}

		public function set pepEnergy(text:String):void
		{
			_pepEnergy = text;
		}

		public function get nervousEnergy():String
		{
			return _nervousEnergy;
		}

		public function set nervousEnergy(text:String):void
		{
			_nervousEnergy = text;
		}

		public function get dumpsEnergy():String
		{
			return _dumpsEnergy;
		}

		public function set dumpsEnergy(text:String):void
		{
			_dumpsEnergy = text;
		}

		public function get calmEnergy():String
		{
			return _calmEnergy;
		}

		public function set calmEnergy(text:String):void
		{
			_calmEnergy = text;
		}

		public function get lotsEnergy():String
		{
			return _lotsEnergy;
		}

		public function set lotsEnergy(text:String):void
		{
			_lotsEnergy = text;
		}

		public function get downBlueEnergy():String
		{
			return _downBlueEnergy;
		}

		public function set downBlueEnergy(text:String):void
		{
			_downBlueEnergy = text;
		}

		public function get wornEnergy():String
		{
			return _wornEnergy;
		}

		public function set wornEnergy(text:String):void
		{
			_wornEnergy = text;
		}


		public function get happyEnergy():String
		{
			return _happyEnergy;
		}

		public function set happyEnergy(text:String):void
		{
			_happyEnergy = text;
		}

		public function get tiredEnergy():String
		{
			return _tiredEnergy;
		}

		public function set tiredEnergy(text:String):void
		{
			_tiredEnergy = text;
		}


		public function savePreOpEvaluation():void
		{
			var adherenceResults:Vector.<DocumentBase> = new Vector.<DocumentBase>();

			var healthActionResult:HealthActionResult = new HealthActionResult();

			healthActionResult.name = new CollaboRhythmCodedValue(null, null, null, PRE_OP_EVALUATION_RESULT);
			healthActionResult.planType = String("prescribed");
			healthActionResult.reportedBy = String("ppeterson@records.mit.edu");
			healthActionResult.dateReported = new Date();

			var actions:ArrayCollection = new ArrayCollection();
			var action:ActionGroupResult = new ActionGroupResult();
			var measurements:ArrayCollection = new ArrayCollection();


			var generalHealthMeasurement:Measurement = new Measurement();
			generalHealthMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "generalHealth");
			generalHealthMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			generalHealthMeasurement.value = new CollaboRhythmValueAndUnit(null, null, generalHealth);
			measurements.addItem(generalHealthMeasurement);

			var generalHealthComparisonMeasurement:Measurement = new Measurement();
			generalHealthComparisonMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "generalHealthComparison");
			generalHealthComparisonMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			generalHealthComparisonMeasurement.value = new CollaboRhythmValueAndUnit(null, null, generalHealthComparison);
			measurements.addItem(generalHealthComparisonMeasurement);

			var sickTFMeasurement:Measurement = new Measurement();
			sickTFMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "sickTF");
			sickTFMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			sickTFMeasurement.value = new CollaboRhythmValueAndUnit(null, null, sickTF);
			measurements.addItem(sickTFMeasurement);

			var healthyTFMeasurement:Measurement = new Measurement();
			healthyTFMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "healthyTF");
			healthyTFMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			healthyTFMeasurement.value = new CollaboRhythmValueAndUnit(null, null, healthyTF);
			measurements.addItem(healthyTFMeasurement);

			var worseTFMeasurement:Measurement = new Measurement();
			worseTFMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "worseTF");
			worseTFMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			worseTFMeasurement.value = new CollaboRhythmValueAndUnit(null, null, worseTF);
			measurements.addItem(worseTFMeasurement);

			var excellentTFMeasurement:Measurement = new Measurement();
			excellentTFMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "excellentTF");
			excellentTFMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			excellentTFMeasurement.value = new CollaboRhythmValueAndUnit(null, null, excellentTF);
			measurements.addItem(excellentTFMeasurement);

			var activitiesHighLimitMeasurement:Measurement = new Measurement();
			activitiesHighLimitMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "activitiesHighLimit");
			activitiesHighLimitMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			activitiesHighLimitMeasurement.value = new CollaboRhythmValueAndUnit(null, null, activitiesHighLimit);
			measurements.addItem(activitiesHighLimitMeasurement);

			var activitiesModLimitMeasurement:Measurement = new Measurement();
			activitiesModLimitMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "activitiesModLimit");
			activitiesModLimitMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			activitiesModLimitMeasurement.value = new CollaboRhythmValueAndUnit(null, null, activitiesModLimit);
			measurements.addItem(activitiesModLimitMeasurement);

			var liftingLimitMeasurement:Measurement = new Measurement();
			liftingLimitMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "liftingLimit");
			liftingLimitMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			liftingLimitMeasurement.value = new CollaboRhythmValueAndUnit(null, null, liftingLimit);
			measurements.addItem(liftingLimitMeasurement);

			var climbingSeveralLimitMeasurement:Measurement = new Measurement();
			climbingSeveralLimitMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "climbingSeveralLimit");
			climbingSeveralLimitMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			climbingSeveralLimitMeasurement.value = new CollaboRhythmValueAndUnit(null, null, climbingSeveralLimit);
			measurements.addItem(climbingSeveralLimitMeasurement);

			var climbingOneLimitMeasurement:Measurement = new Measurement();
			climbingOneLimitMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "climbingOneLimit");
			climbingOneLimitMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			climbingOneLimitMeasurement.value = new CollaboRhythmValueAndUnit(null, null, climbingOneLimit);
			measurements.addItem(climbingOneLimitMeasurement);

			var climbingOneLimitMeasurement:Measurement = new Measurement();
						climbingOneLimitMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "climbingOneLimit");
						climbingOneLimitMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
						climbingOneLimitMeasurement.value = new CollaboRhythmValueAndUnit(null, null, climbingOneLimit);
						measurements.addItem(climbingOneLimitMeasurement);

			var bendingLimitMeasurement:Measurement = new Measurement();
			bendingLimitMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "bendingLimit");
			bendingLimitMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			bendingLimitMeasurement.value = new CollaboRhythmValueAndUnit(null, null, bendingLimit);
						measurements.addItem(bendingLimitMeasurement);

			var walkMileLimitMeasurement:Measurement = new Measurement();
			walkMileLimitMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "walkMileLimit");
			walkMileLimitMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			walkMileLimitMeasurement.value = new CollaboRhythmValueAndUnit(null, null, walkMileLimit);
						measurements.addItem(walkMileLimitMeasurement);

			var walkSeveralLimitMeasurement:Measurement = new Measurement();
			walkSeveralLimitMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "walkSeveralLimit");
			walkSeveralLimitMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			walkSeveralLimitMeasurement.value = new CollaboRhythmValueAndUnit(null, null, walkSeveralLimit);
						measurements.addItem(walkSeveralLimitMeasurement);

			var walkOneLimitMeasurement:Measurement = new Measurement();
			walkOneLimitMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "walkOneLimit");
			walkOneLimitMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			walkOneLimitMeasurement.value = new CollaboRhythmValueAndUnit(null, null, walkOneLimit);
						measurements.addItem(walkOneLimitMeasurement);

			var bathingLimitMeasurement:Measurement = new Measurement();
			bathingLimitMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "bathingLimit");
			bathingLimitMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			bathingLimitMeasurement.value = new CollaboRhythmValueAndUnit(null, null, bathingLimit);
						measurements.addItem(bathingLimitMeasurement);

			var cutTime1Measurement:Measurement = new Measurement();
			cutTime1Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "cutTime1");
			cutTime1Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			cutTime1Measurement.value = new CollaboRhythmValueAndUnit(null, null, climbingOneLimit);
						measurements.addItem(cutTime1Measurement);


			var cutTime2Measurement:Measurement = new Measurement();
			cutTime2Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "cutTime2");
			cutTime2Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			cutTime2Measurement.value = new CollaboRhythmValueAndUnit(null, null, cutTime2);
						measurements.addItem(cutTime2Measurement);

			var accomplishLess1Measurement:Measurement = new Measurement();
			accomplishLess1Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "accomplishLess1");
			accomplishLess1Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			accomplishLess1Measurement.value = new CollaboRhythmValueAndUnit(null, null, accomplishLess1);
						measurements.addItem(accomplishLess1Measurement);

			var accomplishLess2Measurement:Measurement = new Measurement();
			accomplishLess2Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "accomplishLess2");
			accomplishLess2Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			accomplishLess2Measurement.value = new CollaboRhythmValueAndUnit(null, null, accomplishLess2);
						measurements.addItem(accomplishLess2Measurement);

			var limitWork1Measurement:Measurement = new Measurement();
			limitWork1Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "limitWork1");
			limitWork1Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			limitWork1Measurement.value = new CollaboRhythmValueAndUnit(null, null, limitWork1);
						measurements.addItem(limitWork1Measurement);

			var limitWork2Measurement:Measurement = new Measurement();
			limitWork2Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "limitWork2");
			limitWork2Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			limitWork2Measurement.value = new CollaboRhythmValueAndUnit(null, null, limitWork2);
						measurements.addItem(limitWork2Measurement);

			var difficultWork1Measurement:Measurement = new Measurement();
			difficultWork1Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "difficultWork1");
			difficultWork1Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			difficultWork1Measurement.value = new CollaboRhythmValueAndUnit(null, null, difficultWork1);
						measurements.addItem(difficultWork1Measurement);

			var difficultWork2Measurement:Measurement = new Measurement();
			difficultWork2Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "difficultWork2");
			difficultWork2Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			difficultWork2Measurement.value = new CollaboRhythmValueAndUnit(null, null, difficultWork2);
						measurements.addItem(difficultWork2Measurement);

			var cutTimeEmo1Measurement:Measurement = new Measurement();
			cutTimeEmo1Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "cutTimeEmo1");
			cutTimeEmo1Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			cutTimeEmo1Measurement.value = new CollaboRhythmValueAndUnit(null, null, cutTimeEmo1);
						measurements.addItem(cutTimeEmo1Measurement);

			var cutTimeEmo2Measurement:Measurement = new Measurement();
			cutTimeEmo2Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "cutTimeEmo2");
			cutTimeEmo2Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			cutTimeEmo2Measurement.value = new CollaboRhythmValueAndUnit(null, null, cutTimeEmo2);
						measurements.addItem(cutTimeEmo2Measurement);

			var accomplishLessEmo1Measurement:Measurement = new Measurement();
			accomplishLessEmo1Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "accomplishLessEmo1");
			accomplishLessEmo1Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			accomplishLessEmo1Measurement.value = new CollaboRhythmValueAndUnit(null, null, accomplishLessEmo1);
						measurements.addItem(accomplishLessEmo1Measurement);

			var accomplishLessEmo2Measurement:Measurement = new Measurement();
			accomplishLessEmo2Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "accomplishLessEmo2");
			accomplishLessEmo2Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			accomplishLessEmo2Measurement.value = new CollaboRhythmValueAndUnit(null, null, accomplishLessEmo2);
						measurements.addItem(accomplishLessEmo2Measurement);

			var limitWorkEmo1Measurement:Measurement = new Measurement();
			limitWorkEmo1Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "limitWorkEmo1");
			limitWorkEmo1Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			limitWorkEmo1Measurement.value = new CollaboRhythmValueAndUnit(null, null, limitWorkEmo1);
						measurements.addItem(limitWorkEmo1Measurement);

			var limitWorkEmo2Measurement:Measurement = new Measurement();
			limitWorkEmo2Measurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "limitWorkEmo2");
			limitWorkEmo2Measurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			limitWorkEmo2Measurement.value = new CollaboRhythmValueAndUnit(null, null, limitWorkEmo2);
						measurements.addItem(limitWorkEmo2Measurement);

			var socialPhysicalMeasurement:Measurement = new Measurement();
			socialPhysicalMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "socialPhysical");
			socialPhysicalMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			socialPhysicalMeasurement.value = new CollaboRhythmValueAndUnit(null, null, socialPhysical);
						measurements.addItem(socialPhysicalMeasurement);

			var painQuantityMeasurement:Measurement = new Measurement();
			painQuantityMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "painQuantity");
			painQuantityMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			painQuantityMeasurement.value = new CollaboRhythmValueAndUnit(null, null, painQuantity);
						measurements.addItem(painQuantityMeasurement);

			var painInterfereMeasurement:Measurement = new Measurement();
			painInterfereMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "painInterfere");
			painInterfereMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			painInterfereMeasurement.value = new CollaboRhythmValueAndUnit(null, null, painInterfere);
						measurements.addItem(painInterfereMeasurement);

			var socialEmoMeasurement:Measurement = new Measurement();
			socialEmoMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "socialEmo");
			socialEmoMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			socialEmoMeasurement.value = new CollaboRhythmValueAndUnit(null, null, socialEmo);
						measurements.addItem(socialEmoMeasurement);

			var pepEnergyMeasurement:Measurement = new Measurement();
			pepEnergyMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "pepEnergy");
			pepEnergyMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			pepEnergyMeasurement.value = new CollaboRhythmValueAndUnit(null, null, pepEnergy);
						measurements.addItem(pepEnergyMeasurement);

			var nervousEnergyMeasurement:Measurement = new Measurement();
			nervousEnergyMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "nervousEnergy");
			nervousEnergyMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			nervousEnergyMeasurement.value = new CollaboRhythmValueAndUnit(null, null, nervousEnergy);
						measurements.addItem(nervousEnergyMeasurement);

			var dumpsEnergyMeasurement:Measurement = new Measurement();
			dumpsEnergyMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "dumpsEnergy");
			dumpsEnergyMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			dumpsEnergyMeasurement.value = new CollaboRhythmValueAndUnit(null, null, dumpsEnergy);
						measurements.addItem(dumpsEnergyMeasurement);

			var calmEnergyMeasurement:Measurement = new Measurement();
			calmEnergyMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "calmEnergy");
			calmEnergyMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			calmEnergyMeasurement.value = new CollaboRhythmValueAndUnit(null, null, calmEnergy);
						measurements.addItem(calmEnergyMeasurement);

			var lotsEnergyMeasurement:Measurement = new Measurement();
			lotsEnergyMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "lotsEnergy");
			lotsEnergyMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			lotsEnergyMeasurement.value = new CollaboRhythmValueAndUnit(null, null, lotsEnergy);
						measurements.addItem(lotsEnergyMeasurement);

			var downBlueEnergyMeasurement:Measurement = new Measurement();
			downBlueEnergyMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "downBlueEnergy");
			downBlueEnergyMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			downBlueEnergyMeasurement.value = new CollaboRhythmValueAndUnit(null, null, downBlueEnergy);
						measurements.addItem(downBlueEnergyMeasurement);

			var wornEnergyMeasurement:Measurement = new Measurement();
			wornEnergyMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "wornEnergy");
			wornEnergyMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			wornEnergyMeasurement.value = new CollaboRhythmValueAndUnit(null, null, wornEnergy);
						measurements.addItem(wornEnergyMeasurement);


			var happyEnergyMeasurement:Measurement = new Measurement();
			happyEnergyMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "happyEnergy");
			happyEnergyMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			happyEnergyMeasurement.value = new CollaboRhythmValueAndUnit(null, null, happyEnergy);
						measurements.addItem(happyEnergyMeasurement);

			var tiredEnergyMeasurement:Measurement = new Measurement();
			tiredEnergyMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "tiredEnergy");
			tiredEnergyMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			tiredEnergyMeasurement.value = new CollaboRhythmValueAndUnit(null, null, tiredEnergy);
						measurements.addItem(tiredEnergyMeasurement);

			action.measurements = measurements;
			actions.addItem(action);
			healthActionResult.actions = actions;

			adherenceResults.push(healthActionResult);

			_scheduleItemOccurrence.createAdherenceItem(adherenceResults, _record, _activeAccountId, true);
			_record.saveAllChanges();
		}
	}
}
