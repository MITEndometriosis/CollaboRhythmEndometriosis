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

	import flashx.textLayout.factory.StringTextLineFactory;

	import mx.collections.ArrayCollection;
	import mx.skins.halo.DateChooserMonthArrowSkin;

	[Bindable]
	public class IncisionEvaluationModel
	{

		private static const INCISION_EVALUATION_RESULT:String = "Incision Evaluation Result";
		private static const MEASURES_CODED_VALUE_TYPE:String = "http://measures.coded.values/";

		private static const TYPE_CODED_VALUE_TYPE:String = "http://www.w3.org/2001/XMLSchema";

		private var _scheduleItemOccurrence:ScheduleItemOccurrence;
		private var _record:Record;

		private var _hasRedness:Boolean;
		private var _showRednessDetails:Boolean;
		private var _rednessWidth:String;
		private var _showRednessWidth:String;
		private var _hasTenderness:Boolean;
		private var _showTendernessDetails:Boolean;
		private var _hasDischarge:Boolean;
		private var _showDischargeDetails:Boolean;
		private var _hasDischargePuss:Boolean;
		private var _showHasDischargePuss:Boolean;
		private var _hasDischargeBlood:Boolean;
		private var _showHasDischargeBlood:Boolean;
		private var _activeAccountId:String;


		public function IncisionEvaluationModel(scheduleItemOccurrence:ScheduleItemOccurrence,
												healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
												scheduleCollectionsProvider:IScheduleCollectionsProvider)
		{
			_scheduleItemOccurrence = scheduleItemOccurrence;
			_record = healthActionModelDetailsProvider.record;
			_activeAccountId = healthActionModelDetailsProvider.activeAccount.accountId;
		}

		public function get hasRedness():Boolean
		{
			return _hasRedness;
		}

		public function set hasRedness(value:Boolean):void
		{
			_hasRedness = value;
			showRednessDetails = hasRedness;
		}

		public function get showRednessDetails():Boolean
		{
			return _showRednessDetails;
		}

		public function set showRednessDetails(value:Boolean):void
		{
			_showRednessDetails = value;
		}

		public function get rednessWidth():String
		{
			return _rednessWidth;
		}

		public function set rednessWidth(value:String):void
		{
			_rednessWidth = value;
			showRednessWidth = rednessWidth;
		}

		public function get showRednessWidth():String
		{
			return _showRednessWidth;
		}

		public function set showRednessWidth(value:String):void
		{
			_showRednessWidth = value;
		}

		public function get hasTenderness():Boolean
		{
			return _hasTenderness;
		}

		public function set hasTenderness(value:Boolean):void
		{
			_hasTenderness = value;
			showTendernessDetails = hasTenderness;
		}

		public function get showTendernessDetails():Boolean
		{
			return _showTendernessDetails;
		}

		public function set showTendernessDetails(value:Boolean):void
		{
			_showTendernessDetails = value;
		}

		public function get hasDischarge():Boolean
		{
			return _hasDischarge;
		}

		public function set hasDischarge(value:Boolean):void
		{
			_hasDischarge = value;
			showDischargeDetails = hasDischarge;
		}

		public function get showDischargeDetails():Boolean
		{
			return _showDischargeDetails;
		}

		public function set showDischargeDetails(value:Boolean):void
		{
			_showDischargeDetails = value;
		}

		public function get hasDischargePuss():Boolean
		{
			return _hasDischargePuss;
		}

		public function set hasDischargePuss(value:Boolean):void
		{
			_hasDischargePuss = value;
			showHasDischargePuss = hasDischargePuss;
		}

		public function get showHasDischargePuss():Boolean
		{
			return _showHasDischargePuss;
		}

		public function set showHasDischargePuss(value:Boolean):void
		{
			_showHasDischargePuss = value;
		}

		public function get hasDischargeBlood():Boolean
		{
			return _hasDischargeBlood;
		}

		public function set hasDischargeBlood(value:Boolean):void
		{
			_hasDischargeBlood = value;
			showHasDischargeBlood = hasDischargeBlood;
		}

		public function get showHasDischargeBlood():Boolean
		{
			return _showHasDischargeBlood;
		}

		public function set showHasDischargeBlood(value:Boolean):void
		{
			_showHasDischargeBlood = value;
		}


		public function saveIncisionEvaluation():void
		{
			var adherenceResults:Vector.<DocumentBase> = new Vector.<DocumentBase>();

			var healthActionResult:HealthActionResult = new HealthActionResult();

			healthActionResult.name = new CodedValue(null, null, null, INCISION_EVALUATION_RESULT);
			healthActionResult.planType = String("prescribed");
			healthActionResult.reportedBy = String("ppeterson@records.media.mit.edu");
			healthActionResult.dateReported = new Date();

			var actions:ArrayCollection = new ArrayCollection();
			var action:ActionGroupResult = new ActionGroupResult();
			var measurements:ArrayCollection = new ArrayCollection();

			var hasRednessMeasurement:Measurement = new Measurement();
			hasRednessMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has redness");
			hasRednessMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasRednessMeasurement.value = new ValueAndUnit(null, null, hasRedness.toString());
			measurements.addItem(hasRednessMeasurement);

			var woundWidthMeasurement:Measurement = new Measurement();
			woundWidthMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "wound width");
			woundWidthMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:float");
			woundWidthMeasurement.value = new ValueAndUnit(null, new CodedValue(null, null, null, "cm"), rednessWidth.toString());
			measurements.addItem(woundWidthMeasurement);

			var hasTendernessMeasurement:Measurement = new Measurement();
			hasTendernessMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has tenderness");
			hasTendernessMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasTendernessMeasurement.value = new ValueAndUnit(null, null, hasTenderness.toString());
			measurements.addItem(hasTendernessMeasurement);

			var hasDischargeMeasurement:Measurement = new Measurement();
			hasDischargeMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has tenderness");
			hasDischargeMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasDischargeMeasurement.value = new ValueAndUnit(null, null, hasDischarge.toString());
			measurements.addItem(hasDischargeMeasurement);

			var hasDischargePussMeasurement:Measurement = new Measurement();
			hasDischargePussMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has tenderness");
			hasDischargePussMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasDischargePussMeasurement.value = new ValueAndUnit(null, null, hasDischargePuss.toString());
			measurements.addItem(hasDischargePussMeasurement);

			var hasDischargeBloodMeasurement:Measurement = new Measurement();
			hasDischargeBloodMeasurement.name = new CodedValue(MEASURES_CODED_VALUE_TYPE, null, null, "has tenderness");
			hasDischargeBloodMeasurement.type = new CodedValue(TYPE_CODED_VALUE_TYPE, null, null, "xs:boolean");
			hasDischargeBloodMeasurement.value = new ValueAndUnit(null, null, hasDischargeBlood.toString());
			measurements.addItem(hasDischargeBloodMeasurement);

			action.measurements = measurements;
			actions.addItem(action);
			healthActionResult.actions = actions;

			adherenceResults.push(healthActionResult);

			_scheduleItemOccurrence.createAdherenceItem(adherenceResults, _record, _activeAccountId, true);
			_record.saveAllChanges();
		}
	}
}
