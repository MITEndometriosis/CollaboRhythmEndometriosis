package hw2013Endometriosis.plugins.problems.endometriosis.controller
{
	import castle.flexbridge.reflection.ReflectionUtils;

	import collaboRhythm.plugins.schedule.shared.model.IHealthActionCreationControllerFactory;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionInputControllerFactory;
	import collaboRhythm.plugins.schedule.shared.model.IHealthActionListViewAdapterFactory;
	import collaboRhythm.shared.controller.apps.AppControllerInfo;
	import collaboRhythm.shared.model.services.IComponentContainer;
	import collaboRhythm.shared.pluginsSupport.IPlugin;
	import collaboRhythm.shared.ui.healthCharts.model.modifiers.IChartModifierFactory;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.EndometriosisHealthActionInputControllerFactory;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.EndometriosisHealthActionListViewAdapterFactory;

	import mx.modules.ModuleBase;

	public class EndometriosisPluginModule extends ModuleBase implements IPlugin
	{
		public function EndometriosisPluginModule()
		{
			super();
		}

		public function registerComponents(componentContainer:IComponentContainer):void
		{
			// TODO: each plugin should register one or more of the following components; implement or delete the code below as appropriate; using the CollaboRhythm file templates in IntelliJ IDEA may make this easier
			componentContainer.registerComponentInstance(ReflectionUtils.getClassInfo(EndometriosisAppController).name,
					AppControllerInfo,
					new AppControllerInfo(EndometriosisAppController));

			componentContainer.registerComponentInstance(ReflectionUtils.getClassInfo(EndometriosisHealthActionListViewAdapterFactory).name,
					IHealthActionListViewAdapterFactory,
					new EndometriosisHealthActionListViewAdapterFactory());

			componentContainer.registerComponentInstance(ReflectionUtils.getClassInfo(EndometriosisHealthActionInputControllerFactory).name,
					IHealthActionInputControllerFactory,
					new EndometriosisHealthActionInputControllerFactory());
//
//			componentContainer.registerComponentInstance(ReflectionUtils.getClassInfo(EndometriosisChartModifierFactory).name,
//					IChartModifierFactory,
//					new EndometriosisChartModifierFactory());
//
//			componentContainer.registerComponentInstance(ReflectionUtils.getClassInfo(EndometriosisHealthActionCreationControllerFactory).name,
//					IHealthActionCreationControllerFactory,
//					new EndometriosisHealthActionCreationControllerFactory());
		}
	}
}
