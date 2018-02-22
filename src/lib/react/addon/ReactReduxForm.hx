package react.addon;

typedef ReactReduxFormActionTypes = {
	
}

/**
Extern for [ReactReduxForm](https://github.com/davidkpiano/react-redux-form)
**/
@:jsRequire('react-redux-form')
extern class ReactReduxForm {
	static public function combineForms(forms : Dynamic) : Dynamic;
	static public function modelReducer(key : Dynamic, ? defaultState : Dynamic) : Dynamic;
	static public function modeled(rdr : Dynamic, key : String) : Dynamic;
	static public function formReducer(key : Dynamic, ? defaultState : Dynamic) : Dynamic;
	static public var actionTypes : ReactReduxFormActionTypes;
	static public var actions : ReactReduxFormActions;
}

extern class ReactReduxFormActions {
	public function batch(model : String, actions : Array<Dynamic>) : Dynamic;
	public function change(model : String, value : Dynamic, ? options : Dynamic) : Dynamic;
	public function reset(model : String) : Dynamic;
	public function focus(model : String) : Dynamic;
	public function blur(model : String) : Dynamic;
	public function merge() : Dynamic;
	public function xor() : Dynamic;
	public function push() : Dynamic;
	public function toggle() : Dynamic;
	public function filter() : Dynamic;
	public function map() : Dynamic;
	public function remove() : Dynamic;
	public function move() : Dynamic;
	public function load() : Dynamic;
	public function omit() : Dynamic;
	public function validate(model : String, validators : Dynamic) : Dynamic;
	public function setValidity(model : String, validity : Dynamic, ? options : Dynamic) : Dynamic;
	public function setErrors(model : String, errors : Dynamic) : Dynamic;
	public function setFieldsErrors(model : String, errors : Dynamic) : Dynamic;
	public function setPending() : Dynamic;
	public function setAsyncValidity() : Dynamic;
	public function submit(model : String, ? promise : Dynamic) : Dynamic;
	public function setTouched(model : String) : Dynamic;
	public function setUntouched(model : String) : Dynamic;
}
