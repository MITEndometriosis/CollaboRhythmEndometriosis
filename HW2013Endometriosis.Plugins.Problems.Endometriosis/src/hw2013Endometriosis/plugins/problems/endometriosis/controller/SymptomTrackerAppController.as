package hw2013Endometriosis.plugins.problems.endometriosis.controller
{
	import collaboRhythm.shared.collaboration.model.CollaborationLobbyNetConnectionServiceProxy;
	import collaboRhythm.shared.collaboration.model.SynchronizationService;
	import collaboRhythm.shared.controller.apps.AppControllerBase;
	import collaboRhythm.shared.controller.apps.AppControllerConstructorParams;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.EndometriosisHealthActionInputControllerFactory;

	import hw2013Endometriosis.plugins.problems.endometriosis.view.PainEvaluationLocationSelectedView;

	import mx.controls.Alert;

	import spark.components.ViewNavigator;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.SymptomTrackerModel;

	import hw2013Endometriosis.plugins.problems.endometriosis.view.SymptomTrackerButtonWidgetView;
	import hw2013Endometriosis.plugins.problems.endometriosis.view.SymptomTrackerView;

	import hw2013Endometriosis.plugins.problems.endometriosis.controller.PainEvaluationHealthActionInputController;
	import hw2013Endometriosis.plugins.problems.endometriosis.model.PainEvaluationModel;

	import hw2013Endometriosis.plugins.problems.endometriosis.view.VaginalBleedingEvaluationView;
	import hw2013Endometriosis.plugins.problems.endometriosis.view.PainEvaluationLocationSelectedView;
	import hw2013Endometriosis.plugins.problems.endometriosis.view.PainEvaluationView;
	import hw2013Endometriosis.plugins.problems.endometriosis.view.PostOpEvaluationView;


	import mx.core.UIComponent;

	public class SymptomTrackerAppController extends AppControllerBase
	{
		public static const DEFAULT_NAME:String = "SymptomTracker";

		private var _widgetView:SymptomTrackerButtonWidgetView;

		private var _model:SymptomTrackerModel;
		private var _collaborationLobbyNetConnectionServiceProxyLocal:CollaborationLobbyNetConnectionServiceProxy;
		private var _synchronizationService:SynchronizationService;

		//	private var _healthActionInputController:EndometriosisHealthActionInputControllerFactory;

		private var _painController:PainEvaluationHealthActionInputController;
		private var _painModel:PainEvaluationModel;

		public function SymptomTrackerAppController(constructorParams:AppControllerConstructorParams)
		{
			super(constructorParams);

			//	_viewNavigator=_healthActionInputController.viewNavigator;

			_collaborationLobbyNetConnectionServiceProxyLocal = _collaborationLobbyNetConnectionServiceProxy as
					CollaborationLobbyNetConnectionServiceProxy;
			_synchronizationService = new SynchronizationService(this,
					_collaborationLobbyNetConnectionServiceProxyLocal);
			_painModel = new PainEvaluationModel();
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

		public function pushPainEvaluationView():void
		{

			_viewNavigator.pushView(PainEvaluationView, this);

		}

		public function pushShoulderPainEvaluationView():void
		{
			_painModel.screen = PainEvaluationModel.SHOULDER;
			_viewNavigator.pushView(PainEvaluationLocationSelectedView, this);

		}

		public function pushPelvisPainEvaluationView():void
		{

			//_painModel.screen = PainEvaluationModel.PELVIS;
			_viewNavigator.pushView(PainEvaluationLocationSelectedView, this);

		}

		public function pushAbdomenPainEvaluationView():void
		{
			_painModel.screen = PainEvaluationModel.ABDOMEN;
			_viewNavigator.pushView(PainEvaluationLocationSelectedView, this);

		}

		public function pushFlankPainEvaluationView():void
		{
			_painModel.screen = PainEvaluationModel.FLANK;
			_viewNavigator.pushView(PainEvaluationLocationSelectedView, this);

		}

		public function pushEmoView():void
		{

		}

		public function pushPostOpEvaluationView():void
		{
			_viewNavigator.pushView(PostOpEvaluationView, this);
		}

		public function pushVaginalBleedingEvaluationView():void
		{
			_viewNavigator.pushView(VaginalBleedingEvaluationView, this);
		}

	}
}
