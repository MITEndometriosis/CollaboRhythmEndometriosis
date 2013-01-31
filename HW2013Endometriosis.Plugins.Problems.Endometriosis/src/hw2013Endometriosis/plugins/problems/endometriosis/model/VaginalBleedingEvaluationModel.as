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
	public class VaginalBleedingEvaluationModel
	{
		private static const VAGINAL_BLEEDING_EVALUATION_RESULT:String = "Vaginal Bleeding Evaluation Result";
		private static const MEASURES_CODED_VALUE_TYPE:String = "http://measures.coded.values/";

		private static const TYPE_CODED_VALUE_TYPE:String = "http://www.w3.org/2001/XMLSchema";

		private var _scheduleItemOccurrence:ScheduleItemOccurrence;
		private var _record:Record;

		private var _hasBleeding;
		private var _showBleedingColor:Boolean;
		private var _hasBloodClots:Boolean;
		private var _showBloodClotSize:Boolean;
		private var _useFeminineProducts:Boolean;
		private var _showFeminineProductsType:Boolean;
		private var _showFeminineProductsNum:Boolean;

		private var _bloodColor:String;
		private var _bloodClotSize:String;
		private var _feminineProductsType:String;
		private var _feminineProductsNum:String;
		private var _activeAccountId:String;
		private var _hasSpotting:Boolean;


		public function VaginalBleedingEvaluationModel(scheduleItemOccurrence:ScheduleItemOccurrence,
													   healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
													   scheduleCollectionsProvider:IScheduleCollectionsProvider)
		{
			_scheduleItemOccurrence = scheduleItemOccurrence;
			_record = healthActionModelDetailsProvider.record;
			_activeAccountId = healthActionModelDetailsProvider.activeAccount.accountId;

			hasBleeding = false;
			bloodColor = "";
			hasBloodClots = false;
			bloodClotSize = "";
			useFeminineProducts = false;
			feminineProductsType = "";
			feminineProductsNum = "0";

		}

		public function get hasBleeding():Boolean
		{
			return _hasBleeding;
		}

		public function set hasBleeding(value:Boolean):void
		{
			_hasBleeding = value;
			showBleedingColor = hasBleeding;
		}

		public function get bloodColor():String
		{
			return _bloodColor;
		}

		public function set bloodColor(text:String):void
		{
			_bloodColor = text;
		}

		public function get showBleedingColor():Boolean
		{
			return _showBleedingColor;
		}

		public function set showBleedingColor(value:Boolean):void
		{
			_showBleedingColor = value;
		}

		public function get hasBloodClots():Boolean
		{
			return _hasBloodClots;
		}

		public function set hasBloodClots(value:Boolean):void
		{
			_hasBloodClots = value;
			showBloodClotSize = hasBloodClots;
		}

		public function get showBloodClotSize():Boolean
		{
			return _showBloodClotSize;
		}

		public function set showBloodClotSize(value:Boolean):void
		{
			_showBloodClotSize = value;
		}

		public function get bloodClotSize():String
		{
			return _bloodClotSize;
		}

		public function set bloodClotSize(text:String):void
		{
			_bloodClotSize = text;
		}

		public function get useFeminineProducts():Boolean
		{
			return _useFeminineProducts;
		}

		public function set useFeminineProducts(value:Boolean):void
		{
			_useFeminineProducts = value;
			showFeminineProductsTypes = useFeminineProducts;
			showFeminineProductsNum = useFeminineProducts;
		}

		public function get showFeminineProductsTypes():Boolean
		{
			return _showFeminineProductsType;
		}

		public function set showFeminineProductsTypes(value:Boolean):void
		{
			_showFeminineProductsType = value;
		}

		public function get feminineProductsType():String
		{
			return _feminineProductsType;
		}

		public function set feminineProductsType(text:String):void
		{
			_feminineProductsType = text;
		}


		public function get showFeminineProductsNum():Boolean
		{
			return _showFeminineProductsNum;
		}

		public function set showFeminineProductsNum(value:Boolean):void
		{
			_showFeminineProductsNum = value;
		}

		public function get feminineProductsNum():String
		{
			return _feminineProductsNum;
		}

		public function set feminineProductsNum(text:String):void
		{
			_feminineProductsNum = text;
		}


		public function get hasSpotting():Boolean
		{
			return _hasSpotting;
		}

		public function set hasSpotting(value:Boolean):void
		{
			_hasSpotting = value;
		}

		public function saveVaginalBleedingEvaluation():void
		{
			var adherenceResults:Vector.<DocumentBase> = new Vector.<DocumentBase>();

			var healthActionResult:HealthActionResult = new HealthActionResult();

			healthActionResult.name = new CodedValue(null, null, null, VAGINAL_BLEEDING_EVALUATION_RESULT);
			healthActionResult.planType = String("prescribed");
			healthActionResult.reportedBy = String("ppeterson@records.mit.edu");
			healthActionResult.dateReported = new Date();

			var actions:ArrayCollection = new ArrayCollection();
			var action:ActionGroupResult = new ActionGroupResult();
			var measurements:ArrayCollection = new ArrayCollection();

			var hasBleedingMeasurement:Measurement = new Measurement();
			hasBleedingMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has bleeding");
			hasBleedingMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasBleedingMeasurement.value = new ValueAndUnit(null, null, hasBleeding.toString());
			measurements.addItem(hasBleedingMeasurement);

			var bloodColorMeasurement:Measurement = new Measurement();
			bloodColorMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "blood color");
			bloodColorMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			bloodColorMeasurement.value = new ValueAndUnit(null, null, bloodColor.toString());
			measurements.addItem(bloodColorMeasurement);

			var hasBloodClotsMeasurement:Measurement = new Measurement();
			hasBloodClotsMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has blood clots");
			hasBloodClotsMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasBloodClotsMeasurement.value = new ValueAndUnit(null, null, hasBloodClots.toString());
			measurements.addItem(hasBloodClotsMeasurement);

			var bloodClotSizeMeasurement:Measurement = new Measurement();
			bloodClotSizeMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "blood clot size");
			bloodClotSizeMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			bloodClotSizeMeasurement.value = new ValueAndUnit(null, null, bloodClotSize.toString());
			measurements.addItem(bloodClotSizeMeasurement);

			var useFeminineProductMeasurement:Measurement = new Measurement();
			useFeminineProductMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null,
					"use feminine product");
			useFeminineProductMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			useFeminineProductMeasurement.value = new ValueAndUnit(null, null, useFeminineProducts.toString());
			measurements.addItem(useFeminineProductMeasurement);

			var feminineProductTypeMeasurement:Measurement = new Measurement();
			feminineProductTypeMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null,
					"feminine product type");
			feminineProductTypeMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:string");
			feminineProductTypeMeasurement.value = new ValueAndUnit(null, null, feminineProductsType.toString());
			measurements.addItem(feminineProductTypeMeasurement);

			var feminineProductNumMeasurement:Measurement = new Measurement();
			feminineProductNumMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null,
					"feminine product num");
			feminineProductNumMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:float");
			feminineProductNumMeasurement.value = new ValueAndUnit(null, null, feminineProductsNum.toString());
			measurements.addItem(feminineProductNumMeasurement);

			var hasSpottingMeasurement:Measurement = new Measurement();
			hasSpottingMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has spotting");
			hasSpottingMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasSpottingMeasurement.value = new ValueAndUnit(null, null, hasSpotting.toString());
			measurements.addItem(hasSpottingMeasurement);


			action.measurements = measurements;
			actions.addItem(action);
			healthActionResult.actions = actions;

			adherenceResults.push(healthActionResult);

			_scheduleItemOccurrence.createAdherenceItem(adherenceResults, _record, _activeAccountId, true);
			_record.saveAllChanges();
		}
	}
}
