package hw2013Endometriosis.plugins.problems.endometriosis.model
{
	import collaboRhythm.plugins.schedule.shared.model.HealthActionBase;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionInputController;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionInputControllerFactory;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionModelDetailsProvider;
	import collaboRhythm.plugins.schedule.shared.model.IScheduleCollectionsProvider;
	import collaboRhythm.shared.model.ICollaborationLobbyNetConnectionServiceProxy;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;

	import flash.net.URLVariables;

	import hw2013Endometriosis.plugins.problems.endometriosis.controller.IncisionEvaluationHealthActionInputController;
	import hw2013Endometriosis.plugins.problems.endometriosis.controller.PainEvaluationHealthActionInputController;
	import hw2013Endometriosis.plugins.problems.endometriosis.controller.PostOpEvaluationHealthActionInputController;
	import hw2013Endometriosis.plugins.problems.endometriosis.controller.PreOpEvalHealthActionInputController;
	import hw2013Endometriosis.plugins.problems.endometriosis.controller.VaginalBleedingEvaluationHealthActionInputController;
	import hw2013Endometriosis.plugins.problems.endometriosis.controller.VaginalBleedingEvaluationHealthActionInputController;
	import hw2013Endometriosis.plugins.problems.endometriosis.controller.WellnessCheckinHealthActionInputController;

	import spark.components.ViewNavigator;

	public class EndometriosisHealthActionInputControllerFactory implements IHealthActionInputControllerFactory
	{
		public function EndometriosisHealthActionInputControllerFactory()
		{
			super();
		}

		public function createHealthActionInputController(healthAction:HealthActionBase,
														  scheduleItemOccurrence:ScheduleItemOccurrence,
														  healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
														  scheduleCollectionsProvider:IScheduleCollectionsProvider,
														  viewNavigator:ViewNavigator,
														  currentHealthActionInputController:IHealthActionInputController,
														  collaborationLobbyNetConnectionServiceProxy:ICollaborationLobbyNetConnectionServiceProxy):IHealthActionInputController
		{
			if (healthAction.name == EndometriosisModel.INCISION_EVALUATION_HEALTH_ACTION_SCHEDULE_TYPE)
			{
				return new IncisionEvaluationHealthActionInputController(scheduleItemOccurrence,
						healthActionModelDetailsProvider, scheduleCollectionsProvider, viewNavigator);
			}

			if (healthAction.name == EndometriosisModel.VAGINAL_BLEEDING_EVALUATION_HEALTH_ACTION_SCHEDULE_TYPE)
			{
				return new VaginalBleedingEvaluationHealthActionInputController(scheduleItemOccurrence,
						healthActionModelDetailsProvider, scheduleCollectionsProvider, viewNavigator);
			}

			if (healthAction.name == EndometriosisModel.PAIN_EVALUATION_HEALTH_ACTION_SCHEDULE_TYPE)
			{
				return new PainEvaluationHealthActionInputController(scheduleItemOccurrence,
						healthActionModelDetailsProvider, scheduleCollectionsProvider, viewNavigator);
			}

			if (healthAction.name == EndometriosisModel.POST_OP_EVALUATION_HEALTH_ACTION_SCHEDULE_TYPE)
			{
				return new PostOpEvaluationHealthActionInputController(scheduleItemOccurrence,
						healthActionModelDetailsProvider, scheduleCollectionsProvider, viewNavigator);
			}

			if (healthAction.name == EndometriosisModel.PRE_OP_EVALUATION_HEALTH_ACTION_SCHEDULE_TYPE)
			{
				return new PreOpEvalHealthActionInputController(scheduleItemOccurrence,
						healthActionModelDetailsProvider, scheduleCollectionsProvider, viewNavigator);
			}

			if (healthAction.name == EndometriosisModel.WELLNESS_CHECKIN_HEALTH_ACTION_SCHEDULE_TYPE)
			{
				return new WellnessCheckinHealthActionInputController(scheduleItemOccurrence,
						healthActionModelDetailsProvider, scheduleCollectionsProvider, viewNavigator);
			}


			return currentHealthActionInputController;
		}

		public function createDeviceHealthActionInputController(urlVariables:URLVariables,
																healthActionModelDetailsProvider:IHealthActionModelDetailsProvider,
																scheduleCollectionsProvider:IScheduleCollectionsProvider,
																viewNavigator:ViewNavigator,
																currentDeviceHealthActionInputController:IHealthActionInputController):IHealthActionInputController
		{
			return null;
		}
	}
}
