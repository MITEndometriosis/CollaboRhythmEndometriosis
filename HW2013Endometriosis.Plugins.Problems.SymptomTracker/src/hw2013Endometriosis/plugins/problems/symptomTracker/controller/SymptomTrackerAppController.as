package hw2013Endometriosis.plugins.problems.symptomTracker.controller
{
	import collaboRhythm.shared.collaboration.model.CollaborationLobbyNetConnectionServiceProxy;
	import collaboRhythm.shared.collaboration.model.SynchronizationService;
	import collaboRhythm.shared.controller.apps.AppControllerBase;
	import collaboRhythm.shared.controller.apps.AppControllerConstructorParams;

	import hw2013Endometriosis.plugins.problems.symptomTracker.model.SymptomTrackerModel;

	import hw2013Endometriosis.plugins.problems.symptomTracker.view.SymptomTrackerButtonWidgetView;
	import hw2013Endometriosis.plugins.problems.symptomTracker.view.SymptomTrackerView;

	import mx.core.UIComponent;

	public class SymptomTrackerAppController extends AppControllerBase
	{
		public static const DEFAULT_NAME:String = "SymptomTracker";

		private var _widgetView:SymptomTrackerButtonWidgetView;

		private var _model:SymptomTrackerModel;
		private var _collaborationLobbyNetConnectionServiceProxyLocal:CollaborationLobbyNetConnectionServiceProxy;
		private var _synchronizationService:SynchronizationService;

		public function SymptomTrackerAppController(constructorParams:AppControllerConstructorParams)
		{
			super(constructorParams);

			_collaborationLobbyNetConnectionServiceProxyLocal = _collaborationLobbyNetConnectionServiceProxy as
					CollaborationLobbyNetConnectionServiceProxy;
			_synchronizationService = new SynchronizationService(this,
					_collaborationLobbyNetConnectionServiceProxyLocal);
		}

		override protected function createWidgetView():UIComponent
		{
			_widgetView = new SymptomTrackerButtonWidgetView();
			return _widgetView;
		}

		override public function reloadUserData():void
		{
			removeUserData();

			super.reloadUserData();
		}

		override protected function updateWidgetViewModel():void
		{
			super.updateWidgetViewModel();

			if (_widgetView && _activeRecordAccount)
			{
				_widgetView.init(this, _model);
			}
		}

		public override function get defaultName():String
		{
			return DEFAULT_NAME;
		}

		override public function get widgetView():UIComponent
		{
			return _widgetView;
		}

		override public function set widgetView(value:UIComponent):void
		{
			_widgetView = value as SymptomTrackerButtonWidgetView;
		}

		override public function get isFullViewSupported():Boolean
		{
			return false;
		}

		override protected function get shouldShowFullViewOnWidgetClick():Boolean
		{
			return false;
		}

		protected override function removeUserData():void
		{
			_model = null;
			// unregister any components in the _componentContainer here, such as:
			// _componentContainer.unregisterServiceType(IIndividualMessageHealthRecordService);
		}

		public function showSymptomTrackerView():void
		{
			if (_synchronizationService.synchronize("showSymptomTrackerView"))
			{
				return;
			}

			_viewNavigator.pushView(SymptomTrackerView, this);
		}

		override public function close():void
		{
			if (_synchronizationService)
			{
				_synchronizationService.removeEventListener(this);
				_synchronizationService = null;
			}

			super.close();
		}

		public function get model():SymptomTrackerModel
		{
			return _model;
		}

		public function pushNewScreen():void
		{
			
		}
	}
}
