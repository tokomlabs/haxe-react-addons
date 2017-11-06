package react.addon;

/**
Extern for [ReactRedux](https://github.com/reactjs/react-redux)
**/
@:jsRequire('react-redux')
extern class ReactRedux {
	static public function connect(? m1 : Dynamic, ? m2 : Dynamic, ? m3 : Dynamic, ? opt : Dynamic) : Dynamic;
}

@:jsRequire('react-redux', 'Provider')
extern class Provider extends react.ReactComponent { }
