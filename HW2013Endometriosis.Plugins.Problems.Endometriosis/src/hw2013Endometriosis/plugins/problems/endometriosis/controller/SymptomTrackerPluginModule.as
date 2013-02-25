package hw2013Endometriosis.plugins.problems.endometriosis.controller
{
	import castle.flexbridge.reflection.ReflectionUtils;

	import hw2013Endometriosis.plugins.problems.endometriosis.controller.SymptomTrackerAppController;

	import spark.components.ViewNavigator;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionCreationControllerFactory;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionInputControllerFactory;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionListViewAdapterFactory;
	import collaboRhythm.shared.controller.apps.AppControllerInfo;
	import collaboRhythm.shared.model.services.IComponentContainer;
	import collaboRhythm.shared.pluginsSupport.IPlugin;
	import collaboRhythm.shared.ui.healthCharts.model.modifiers.IChartModifierFactory;

	import mx.modules.ModuleBase;

	public class SymptomTrackerPluginModule extends ModuleBase implements IPlugin
	{


		public function SymptomTrackerPluginModule()
		{
			super();
		}

		public function registerComponents(componentContainer:IComponentContainer):void
		{
			// TODO: each plugin should register one or more of the following components; implement or delete the code below as appropriate; using the CollaboRhythm file templates in IntelliJ IDEA may make this easier
			componentContainer.registerComponentInstance(ReflectionUtils.getClassInfo(SymptomTrackerAppController).name,
					AppControllerInfo,
					new AppControllerInfo(SymptomTrackerAppController));

//			componentContainer.registerComponentInstance(ReflectionUtils.getClassInfo(SymptomTrackerHealthActionListViewAdapterFactory).name,
//					IHealthActionListViewAdapterFactory,
//					new SymptomTrackerHealthActionListViewAdapterFactory());
//
//			componentContainer.registerComponentInstance(ReflectionUtils.getClassInfo(SymptomTrackerHealthActionInputControllerFactory).name,
//					IHealthActionInputControllerFactory,
//					new SymptomTrackerHealthActionInputControllerFactory());
//
//			componentContainer.registerComponentInstance(ReflectionUtils.getClassInfo(SymptomTrackerChartModifierFactory).name,
//					IChartModifierFactory,
//					new SymptomTrackerChartModifierFactory());
//
//			componentContainer.registerComponentInstance(ReflectionUtils.getClassInfo(SymptomTrackerHealthActionCreationControllerFactory).name,
//					IHealthActionCreationControllerFactory,
//					new SymptomTrackerHealthActionCreationControllerFactory());
		}
	}
}
