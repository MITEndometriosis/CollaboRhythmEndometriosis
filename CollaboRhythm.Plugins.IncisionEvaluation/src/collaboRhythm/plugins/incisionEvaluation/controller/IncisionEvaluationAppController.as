package collaboRhythm.plugins.incisionEvaluation.controller
{
	import collaboRhythm.plugins.incisionEvaluation.model.IncisionEvaluationModel;
	import collaboRhythm.plugins.incisionEvaluation.view.IncisionEvaluationButtonWidgetView;
	import collaboRhythm.plugins.incisionEvaluation.view.IncisionEvaluationView;
	import collaboRhythm.shared.controller.apps.AppControllerBase;
	import collaboRhythm.shared.controller.apps.AppControllerConstructorParams;

	import mx.core.UIComponent;

	public class IncisionEvaluationAppController extends AppControllerBase
	{
		private var _widgetView:IncisionEvaluationButtonWidgetView;

		public static const DEFAULT_NAME:String = "Incision Evaluation";
		private var _model:IncisionEvaluationModel;

		public function IncisionEvaluationAppController(constructorParams:AppControllerConstructorParams)
		{
			super(constructorParams);
			_model = new IncisionEvaluationModel();
		}

		public override function get defaultName():String
		{
			return DEFAULT_NAME;
		}

		override protected function createWidgetView():UIComponent
		{
			_widgetView = new IncisionEvaluationButtonWidgetView();
			return _widgetView
		}

		override protected function updateWidgetViewModel():void
		{
			super.updateWidgetViewModel();

			if (_widgetView && _activeRecordAccount)
			{
				_widgetView.init(this);
			}
		}

		override public function get widgetView():UIComponent
		{
			return _widgetView;
		}

		override public function set widgetView(value:UIComponent):void
		{
			_widgetView = value as IncisionEvaluationButtonWidgetView;
		}

		override public function get isFullViewSupported():Boolean
		{
			return false;
		}

		override protected function get shouldShowFullViewOnWidgetClick():Boolean
		{
			return false;
		}

		public function showIncisionEvaluationView():void
		{
			_viewNavigator.pushView(IncisionEvaluationView, this);
		}

		public function updateHasRedness(value:Boolean):void
		{
			_model.hasRedness = value;
		}

		public function get model():IncisionEvaluationModel
		{
			return _model;
		}

		public function set model(value:IncisionEvaluationModel):void
		{
			_model = value;
		}
	}
}
