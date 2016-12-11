package react.addon;

typedef ReduxAuthWrapperOptions = {
	authSelector : Dynamic -> ? Dynamic -> ? Bool -> Dynamic,
	? redirectAction : Dynamic -> Dynamic,
	? failureRedirectPath : String,
	? wrapperDisplayName : String,
	? predicate : Dynamic -> Bool,
	? allowRedirectBack : Bool
}

/**
Extern for [ReduxAuthWrapper](https://github.com/mjrussell/redux-auth-wrapper)
**/
@:jsRequire('redux-auth-wrapper')
extern class ReduxAuthWrapper {
	@:native("UserAuthWrapper")
	static public function hoc(options : ReduxAuthWrapperOptions) : Dynamic -> Dynamic;
}
