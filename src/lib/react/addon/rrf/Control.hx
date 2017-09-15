package react.addon.rrf;

/**
Extern for [ReactReduxForm](https://github.com/davidkpiano/react-redux-form)
**/
@:jsRequire('react-redux-form','Control')
extern class Control {
	static public var text : Dynamic;
	// static public var custom : Control;
	// static public var textarea : Control;
	// static public var radio : Control;
	// static public var checkbox : Control;
	// static public var file : Control;
	// static public var select : Control;
	// static public var button : Control;
	// static public var reset : Control;
}

@:jsRequire('react-redux-form','Control.text')
extern class ControlText extends react.ReactComponent { }
