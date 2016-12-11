package react.addon;

/**
Extern for [React CSS Transition Replace](https://github.com/marnusw/react-css-transition-replace)
**/
@:jsRequire("react-css-transition-replace")
extern class ReactCSSTransitionReplace extends react.ReactComponent 
{
	public static var transitionName : String;
	public static var transitionEnterTimeout : Int;
	public static var transitionLeaveTimeout : Int;
}