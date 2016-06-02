package api.react.addon;

typedef ReactReduxFormActionTypes = {
	
}

/**
Extern for [ReactReduxForm](https://github.com/davidkpiano/react-redux-form)
**/
@:jsRequire('react-redux-form')
extern class ReactReduxForm {
	static public function modelReducer(key : Dynamic, ? defaultState : Dynamic) : Dynamic;
	static public function modeled(rdr : Dynamic, key : String) : Dynamic;
	static public function formReducer(key : Dynamic, ? defaultState : Dynamic) : Dynamic;
	static public var actionTypes : ReactReduxFormActionTypes;
	static public var actions : ReactReduxFormActions;
}

extern class ReactReduxFormActions {
	public function change() : Void;
	public function reset(model : String) : Void;
	public function merge() : Void;
	public function xor() : Void;
	public function push() : Void;
	public function toggle() : Void;
	public function filter() : Void;
	public function map() : Void;
	public function remove() : Void;
	public function move() : Void;
	public function load() : Void;
	public function omit() : Void;
	public function validate() : Void;
	public function setValidity() : Void;
	public function setErrors() : Void;
	public function setPending() : Void;
	public function setAsyncValidity() : Void;
	public function submit() : Void;
}
