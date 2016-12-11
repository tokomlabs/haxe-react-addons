package react.addon;

/**
Extern for [ReactSwipe](https://github.com/reactjs/react-router)
**/
@:jsRequire('react-router')
extern class ReactRouter {
	static public var hashHistory : Dynamic;
	static public var browserHistory : Dynamic;
	static public var withRouter : Dynamic -> Dynamic;
}

typedef RouterShape = Dynamic; // TODO
