package react.addon.formsy;

@:jsRequire('formsy-react','Form')
extern class Form {
	public function reset(data : Dynamic) : Void;
	public function getModel() : Dynamic;
	public function updateInputsWithError(errors : js.support.DynamicObject<String>) : Void;
	/*
	props:
	className
	mapping
	validationErrors
	onSubmit()
	onValid()
	onInvalid()
	onValidSubmit()
	onInvalidSubmit()
	onChange()
	preventExternalInvalidation
	*/
}