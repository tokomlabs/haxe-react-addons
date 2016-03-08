package api.react.addon.materialui;

@:jsRequire("material-ui/lib/tabs/tab")
extern class Tab
{
	public var className : String;
	public var label : String;
	public var onActive : Tab -> Void;
	public var onTouchTap : Tab -> Void;
	public var selected : Bool;
	public var style : Dynamic; // FIXME
	public var value : Dynamic; // FIXME
	public var width : String;
}