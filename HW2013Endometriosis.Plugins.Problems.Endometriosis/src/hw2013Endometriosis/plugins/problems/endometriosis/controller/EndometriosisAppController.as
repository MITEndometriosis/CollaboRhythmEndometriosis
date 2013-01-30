package hw2013Endometriosis.plugins.problems.endometriosis.controller
{
	import collaboRhythm.shared.collaboration.model.CollaborationLobbyNetConnectionServiceProxy;
	import collaboRhythm.shared.collaboration.model.SynchronizationService;
	import collaboRhythm.shared.controller.apps.AppControllerBase;
	import collaboRhythm.shared.controller.apps.AppControllerConstructorParams;

	import com.adobe.nativeExtensions.Vibration;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.EndometriosisModel;

	import hw2013Endometriosis.plugins.problems.endometriosis.view.EndometriosisButtonWidgetView;
	import hw2013Endometriosis.plugins.problems.endometriosis.view.EndometriosisView;

	import mx.core.UIComponent;

	public class EndometriosisAppController extends AppControllerBase
	{
		public static const DEFAULT_NAME:String = "Endometriosis";

		private var _widgetView:EndometriosisButtonWidgetView;

		private var _model:EndometriosisModel;
		private var _collaborationLobbyNetConnectionServiceProxyLocal:CollaborationLobbyNetConnectionServiceProxy;
		private var _synchronizationService:SynchronizationService;

		public function EndometriosisAppController(constructorParams:AppControllerConstructorParams)
		{
			super(constructorParams);

			_collaborationLobbyNetConnectionServiceProxyLocal = _collaborationLobbyNetConnectionServiceProxy as
					CollaborationLobbyNetConnectionServiceProxy;
			_synchronizationService = new SynchronizationService(this,
					_collaborationLobbyNetConnectionServiceProxyLocal);
		}

		override protected function createWidgetView():UIComponent
		{
			_widgetView = new EndometriosisButtonWidgetView();
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
			_widgetView = value as EndometriosisButtonWidgetView;
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

		public function showEndometriosisView():void
		{
			if (_synchronizationService.synchronize("showEndometriosisView"))
			{
				return;
			}

			_viewNavigator.pushView(EndometriosisView, this);
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

		public function get model():EndometriosisModel
		{
			return _model;
		}

		public function playVideo(instructionalVideoPath:String):void
		{
			// TODO: Currently using the vibration native extension with modifications to play a video
			var vibration:Vibration = new Vibration();
			vibration.vibrate(instructionalVideoPath, "video");
		}
	}
}
