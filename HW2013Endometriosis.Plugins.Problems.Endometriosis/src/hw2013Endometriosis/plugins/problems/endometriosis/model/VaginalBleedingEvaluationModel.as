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

		private var _hasBleeding:Boolean;
		private var _showBleedingColor:Boolean;
		private var _hasBloodClots:Boolean;
		private var _showBloodClotSize:Boolean;
		private var _useFeminineProducts:Boolean;
		private var _showFeminineProductsType:Boolean;
		private var _showFeminineProductsNum:Boolean;

		private var _activeAccountId:String;

		public function VaginalBleedingEvaluationModel(scheduleItemOccurrence:ScheduleItemOccurrence,
														healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
														scheduleCollectionsProvider:IScheduleCollectionsProvider)
		{
			_scheduleItemOccurrence = scheduleItemOccurrence;
			_record = healthActionModelDetailsProvider.record;
			_activeAccountId = healthActionModelDetailsProvider.activeAccount.accountId;
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

		public function get showFeminineProductsNum():Boolean
		{
			return _showFeminineProductsNum;
		}

		public function set showFeminineProductsNum(value:Boolean):void
		{
			_showFeminineProductsNum = value;
		}

		public function saveVaginalBleedingEvaluation():void
		{
			var adherenceResults:Vector.<DocumentBase> = new Vector.<DocumentBase>();

			var healthActionResult:HealthActionResult = new HealthActionResult();

			healthActionResult.name = new CodedValue(null, null, null, VAGINAL_BLEEDING_EVALUATION_RESULT);


			var actions:ArrayCollection = new ArrayCollection();
			var action:ActionGroupResult = new ActionGroupResult();
			var measurements:ArrayCollection = new ArrayCollection();

			var hasRednessMeasurement:Measurement = new Measurement();
			hasRednessMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has redness");
			hasRednessMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasRednessMeasurement.value = new ValueAndUnit(null, null, hasBleeding.toString());
			measurements.addItem(hasRednessMeasurement);

			action.measurements = measurements;
			actions.addItem(action);
			healthActionResult.actions = actions;

			adherenceResults.push(healthActionResult);

			_scheduleItemOccurrence.createAdherenceItem(adherenceResults, _record, _activeAccountId, true);
			_record.saveAllChanges();
		}
	}
}
