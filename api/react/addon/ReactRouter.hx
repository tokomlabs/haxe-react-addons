package api.react.addon;

/**
Extern for [ReactSwipe](https://github.com/reactjs/react-router)
**/
@:jsRequire('react-router')
extern class ReactRouter {
	static public var hashHistory : Dynamic;
	static public var browserHistory : Dynamic;
}

@:jsRequire('react-router','Router')
extern class Router { }

@:jsRequire('react-router','Route')
extern class Route { }

@:jsRequire('react-router','Link')
extern class Link { }