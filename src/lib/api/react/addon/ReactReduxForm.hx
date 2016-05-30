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
	static public function change() : Void;
	static public function reset() : Void;
	static public function merge() : Void;
	static public function xor() : Void;
	static public function push() : Void;
	static public function toggle() : Void;
	static public function filter() : Void;
	static public function map() : Void;
	static public function remove() : Void;
	static public function move() : Void;
	static public function load() : Void;
	static public function omit() : Void;
	static public function validate() : Void;
	static public function setValidity() : Void;
	static public function setErrors() : Void;
	static public function setPending() : Void;
	static public function setAsyncValidity() : Void;
	static public function submit() : Void;
}
