package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.plugins.schedule.shared.model.IScheduleCollectionsProvider;
	import collaboRhythm.shared.model.Record;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;

	public class EmotionalHealthEvaluationModel
	{

		private var _scheduleItemOccurrence:ScheduleItemOccurrence;
		private var _record:Record;
		private var _activeAccountId:String;

		public function EmotionalHealthEvaluationModel(scheduleItemOccurrence:ScheduleItemOccurrence,
											 healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
											 scheduleCollectionsProvider:IScheduleCollectionsProvider)
		{
			_scheduleItemOccurrence = scheduleItemOccurrence;
			_record = healthActionModelDetailsProvider.record;
			_activeAccountId = healthActionModelDetailsProvider.activeAccount.accountId;
		}
	}
}
