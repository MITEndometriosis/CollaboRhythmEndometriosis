package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionListViewAdapter;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionListViewAdapterFactory;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.shared.model.healthRecord.document.HealthActionPlan;
	import collaboRhythm.shared.model.healthRecord.document.HealthActionSchedule;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.EndometriosisModel;

	import mx.collections.ArrayCollection;

	public class EndometriosisHealthActionListViewAdapterFactory implements IHealthActionListViewAdapterFactory
	{


		public function EndometriosisHealthActionListViewAdapterFactory()
		{
		}

		public function createUnscheduledHealthActionViewAdapters(healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
																  adapters:ArrayCollection):void
		{
			adapters.addItem(new PainEvaluationHealthActionListViewAdapter(null, healthActionModelDetailsProvider));
		}


		public function createScheduledHealthActionViewAdapter(scheduleItemOccurrence:ScheduleItemOccurrence,
															   healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
															   currentHealthActionListViewAdapter:IHealthActionListViewAdapter):IHealthActionListViewAdapter
		{
			var healthActionSchedule:HealthActionSchedule = scheduleItemOccurrence.scheduleItem as HealthActionSchedule;
			// TODO: perform additional check(s) to ensure that this healthActionSchedule is a Endometriosis health action; we must avoid creating/modifying the adapter for other health action schedules 
			if (healthActionSchedule && healthActionSchedule.scheduledHealthAction is HealthActionPlan &&
					healthActionModelDetailsProvider.record)
			{
				if (healthActionSchedule.name.text ==
						EndometriosisModel.INCISION_EVALUATION_HEALTH_ACTION_SCHEDULE_TYPE)
				{
					return new IncisionEvaluationHealthActionListViewAdapter(scheduleItemOccurrence,
							healthActionModelDetailsProvider);
				}

				if (healthActionSchedule.name.text ==
						EndometriosisModel.VAGINAL_BLEEDING_EVALUATION_HEALTH_ACTION_SCHEDULE_TYPE)
				{
					return new VaginalBleedingHealthActionListViewAdapter(scheduleItemOccurrence,
							healthActionModelDetailsProvider);
				}

			}

			return currentHealthActionListViewAdapter;
		}
	}
}
