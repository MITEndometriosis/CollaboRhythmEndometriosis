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

	import mx.utils.RPCStringUtil;

	[Bindable]
	public class PostOpEvaluationModel
	{
		private static const POSTOP_EVALUATION_RESULT:String = "Post-Operative Daily Evaluation";
		private static const MEASURES_CODED_VALUE_TYPE:String = "http://measures.coded.values/";

		private static const TYPE_CODED_VALUE_TYPE:String = "http://www.w3.org/2001/XMLSchema";

		private var _scheduleItemOccurrence:ScheduleItemOccurrence;
		private var _record:Record;
		private var _activeAccountId:String;

		private var _canUrinate:Boolean;
		private var _showUrinationDetails:Boolean;
		private var _hasUrinationPain:Boolean;
		private var _showHasUrinationPain:Boolean;
		private var _hasNausea:Boolean;
		private var _showHasNausea:Boolean;
		private var _hasVomited:Boolean;
		private var _showHasVomited:Boolean;
		private var _hasAppetite:Boolean;
		private var _showHasAppetite:Boolean;
		private var _hasBM:Boolean;
		private var _showHasBM:Boolean;
		private var _hasPassedGas:Boolean;
		private var _showHasPassedGas:Boolean;
		private var _temperatureReading:String;
		private var _showTemperatureReading:String;

		public function PostOpEvaluationModel(scheduleItemOccurrence:ScheduleItemOccurrence,
											  healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
											  scheduleCollectionsProvider:IScheduleCollectionsProvider)
		{
			_scheduleItemOccurrence = scheduleItemOccurrence;
			_record = healthActionModelDetailsProvider.record;
			_activeAccountId = healthActionModelDetailsProvider.activeAccount.accountId;

			canUrinate = false;
			hasUrinationPain = false;
			hasNausea = false;
			hasVomited = false;
			hasAppetite = false;
			hasBM = false;
			hasPassedGas = false;
			temperatureReading = "0";

		}

		public function get canUrinate():Boolean
		{
			return _canUrinate;
		}

		public function set canUrinate(value:Boolean):void
		{
			_canUrinate = value;
			showUrinationDetails = canUrinate;
		}

		public function get showUrinationDetails():Boolean
		{
			return _showUrinationDetails;
		}

		public function set showUrinationDetails(value:Boolean):void
		{
			_showUrinationDetails = value;
		}

		public function get hasUrinationPain():Boolean
		{
			return _hasUrinationPain;
		}

		public function set hasUrinationPain(value:Boolean):void
		{
			_hasUrinationPain = value;
			showHasUrinationPain = hasUrinationPain;
		}

		public function get showHasUrinationPain():Boolean
		{
			return _showHasUrinationPain;
		}

		public function set showHasUrinationPain(value:Boolean):void
		{
			_showHasUrinationPain = value;
		}

		public function get hasNausea():Boolean
		{
			return _hasNausea;
		}

		public function set hasNausea(value:Boolean):void
		{
			_hasNausea = value;
			showHasNausea = hasNausea;
		}

		public function get showHasNausea():Boolean
		{
			return _showHasNausea;
		}

		public function set showHasNausea(value:Boolean):void
		{
			_showHasNausea = value;
		}

		public function get hasVomited():Boolean
		{
			return _hasVomited;
		}

		public function set hasVomited(value:Boolean):void
		{
			_hasVomited = value;
			showHasVomited = hasVomited;
		}

		public function get showHasVomited():Boolean
		{
			return _showHasVomited;
		}

		public function set showHasVomited(value:Boolean):void
		{
			_showHasVomited = value;
		}

		public function get hasAppetite():Boolean
		{
			return _hasAppetite;
		}

		public function set hasAppetite(value:Boolean):void
		{
			_hasAppetite = value;
			showHasAppetite = hasAppetite;
		}

		public function get showHasAppetite():Boolean
		{
			return _showHasAppetite;
		}

		public function set showHasAppetite(value:Boolean):void
		{
			_showHasAppetite = value;
		}

		public function get hasBM():Boolean
		{
			return _hasBM;
		}

		public function set hasBM(value:Boolean):void
		{
			_hasBM = value;
			showHasBM = hasBM;
		}

		public function get showHasBM():Boolean
		{
			return _showHasBM;
		}

		public function set showHasBM(value:Boolean):void
		{
			_showHasBM = value;
		}

		public function get hasPassedGas():Boolean
		{
			return _hasPassedGas;
		}

		public function set hasPassedGas(value:Boolean):void
		{
			_hasPassedGas = value;
			showHasPassedGas = hasPassedGas;
		}

		public function get showHasPassedGas():Boolean
		{
			return _showHasPassedGas;
		}

		public function set showHasPassedGas(value:Boolean):void
		{
			_showHasPassedGas = value;
		}

		public function get temperatureReading():String
		{
			return _temperatureReading;
		}

		public function set temperatureReading(value:String):void
		{
			_temperatureReading = value;
			showTemperatureReading = temperatureReading;
		}

		public function get showTemperatureReading():String
		{
			return _showTemperatureReading;
		}

		public function set showTemperatureReading(value:String):void
		{
			_showTemperatureReading = value;
		}

		public function savePostOpEvaluation():void
		{
			var adherenceResults:Vector.<DocumentBase> = new Vector.<DocumentBase>();

			var healthActionResult:HealthActionResult = new HealthActionResult();

			healthActionResult.name = new CollaboRhythmCodedValue(null, null, null, POSTOP_EVALUATION_RESULT);
			healthActionResult.planType = String("prescribed");
			healthActionResult.reportedBy = String("ppeterson@records.media.mit.edu");
			healthActionResult.dateReported = new Date();

			var actions:ArrayCollection = new ArrayCollection();
			var action:ActionGroupResult = new ActionGroupResult();
			var measurements:ArrayCollection = new ArrayCollection();

			var canUrinateMeasurement:Measurement = new Measurement();
			canUrinateMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "can urinate");
			canUrinateMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			canUrinateMeasurement.value = new CollaboRhythmValueAndUnit(null, null, canUrinate.toString());
			measurements.addItem(canUrinateMeasurement);

			var hasUrinationPainMeasurement:Measurement = new Measurement();
			hasUrinationPainMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null,
					"has urination pain");
			hasUrinationPainMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasUrinationPainMeasurement.value = new CollaboRhythmValueAndUnit(null, null, hasUrinationPain.toString());
			measurements.addItem(hasUrinationPainMeasurement);

			var hasNauseaMeasurement:Measurement = new Measurement();
			hasNauseaMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has nausea");
			hasNauseaMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasNauseaMeasurement.value = new CollaboRhythmValueAndUnit(null, null, hasNausea.toString());
			measurements.addItem(hasNauseaMeasurement);

			var hasVomitedMeasurement:Measurement = new Measurement();
			hasVomitedMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has vomited");
			hasVomitedMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasVomitedMeasurement.value = new CollaboRhythmValueAndUnit(null, null, hasVomited.toString());
			measurements.addItem(hasVomitedMeasurement);

			var hasAppetiteMeasurement:Measurement = new Measurement();
			hasAppetiteMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has appetite");
			hasAppetiteMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasAppetiteMeasurement.value = new CollaboRhythmValueAndUnit(null, null, hasAppetite.toString());
			measurements.addItem(hasAppetiteMeasurement);

			var hasBMMeasurement:Measurement = new Measurement();
			hasBMMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has BM");
			hasBMMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasBMMeasurement.value = new CollaboRhythmValueAndUnit(null, null, hasBM.toString());
			measurements.addItem(hasBMMeasurement);

			var hasPassedGasMeasurement:Measurement = new Measurement();
			hasPassedGasMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has passed gas");
			hasPassedGasMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasPassedGasMeasurement.value = new CollaboRhythmValueAndUnit(null, null, hasPassedGas.toString());
			measurements.addItem(hasPassedGasMeasurement);

			var temperatureReadingMeasurement:Measurement = new Measurement();
			temperatureReadingMeasurement.name = new CollaboRhythmCodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "temperature");
			temperatureReadingMeasurement.type = new CollaboRhythmCodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:float");
			temperatureReadingMeasurement.value = new CollaboRhythmValueAndUnit(null, new CollaboRhythmCodedValue(null, null, null, "degrees"),
					temperatureReading.toString());
			measurements.addItem(temperatureReadingMeasurement);

			action.measurements = measurements;
			actions.addItem(action);
			healthActionResult.actions = actions;

			adherenceResults.push(healthActionResult);

			_scheduleItemOccurrence.createAdherenceItem(adherenceResults, _record, _activeAccountId, true);
			_record.saveAllChanges();
		}
	}
}
