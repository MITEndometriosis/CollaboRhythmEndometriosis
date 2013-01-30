package hw2013Endometriosis.plugins.problems.endometriosis.controller
{
	import collaboRhythm.shared.model.healthRecord.document.HealthActionResult;
	import collaboRhythm.shared.model.healthRecord.document.healthActionResult.ActionResult;
	import collaboRhythm.shared.model.healthRecord.document.healthActionResult.Measurement;

	import hw2013Endometriosis.plugins.problems.endometriosis.model.PainEvaluationModel;

	public class PainProxy

	{
		private var _painLocationString:String;
		private var _healthActionResult:HealthActionResult;
		private var _painIntensity:int;
		private var _painCharacter:String;
		private var _painAggravatingFactors:String;
		private var _painAlleviatingFactors:String;
		private var _painDuration:String;
		private var _painLength:String;

		public function PainProxy(healthActionResult:HealthActionResult)
		{
			_healthActionResult = healthActionResult;
			parseHealthActionResult();
		}

		private function parseHealthActionResult():void
		{
			var actionResult:ActionResult = _healthActionResult.actions &&
					_healthActionResult.actions.length > 0 ? _healthActionResult.actions[0] : null;
			if (actionResult)
			{
				for each (var measurement:Measurement in actionResult.measurements)
				{
					switch (measurement.name.text )
					{
						case "pain location":
							_painLocationString = measurement.value.textValue;
							break;

						case "pain intensity":
							_painIntensity = parseInt(measurement.value.value);
							break;

						case "pain character":
							_painCharacter = measurement.value.textValue;
							break;

						case "pain aggravating factors":
							_painAggravatingFactors = measurement.value.textValue;
							break;

						case "pain alleviating factors":
							_painAlleviatingFactors = measurement.value.textValue;
							break;

						case "pain duration":
							_painDuration = measurement.value.textValue;
							break;

						case "pain length":
							_painLength = measurement.value.textValue;
							break;

						default :
							break;


					}
				}
			}
		}


		public function get healthActionResult():HealthActionResult
		{
			return _healthActionResult;
		}


		public function get dateReported():*
		{
			return  _healthActionResult.dateReported;
		}

		public function get painLocation():int
		{
			switch (_painLocationString ? _painLocationString.toLowerCase() : null)
			{
				case PainEvaluationModel.FLANK.toLowerCase():
					return 1;
				case PainEvaluationModel.ABDOMEN.toLowerCase():
					return 2;
				case PainEvaluationModel.PELVIS.toLocaleLowerCase():
					return 3;
				default:
					return 0;
			}
		}


		public function get painLocationString():String
		{
			return _painLocationString;
		}

		public function get painIntensity():int
		{
			return _painIntensity;
		}

		public function get painCharacter():String
		{
			return _painCharacter;
		}

		public function get painAggravatingFactors():String
		{
			return _painAggravatingFactors;
		}

		public function get painAlleviatingFactors():String
		{
			return _painAlleviatingFactors;
		}

		public function get painDuration():String
		{
			return _painDuration;
		}

		public function get painLength():String
		{
			return _painLength;
		}
	}
}
