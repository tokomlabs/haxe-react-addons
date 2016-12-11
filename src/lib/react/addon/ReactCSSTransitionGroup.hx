package react.addon;

@:jsRequire("react-addons-css-transition-group")
extern class ReactCSSTransitionGroup extends react.ReactComponent 
{
	public static var transitionName : String;
	public static var transitionEnterTimeout : Int;
	public static var transitionLeaveTimeout : Int;
}