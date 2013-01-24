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
	import hw2013Endometriosis.plugins.problems.endometriosis.controller.VaginalBleedingHealthActionInputController;

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
				return new VaginalBleedingHealthActionInputController(scheduleItemOccurrence,
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
