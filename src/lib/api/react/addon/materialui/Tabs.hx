package api.react.addon.materialui;

@:jsRequire("material-ui/lib/tabs/tabs")
extern class Tabs
{
	public var children : Dynamic; // FIXME
	public var className : String;
	public var contentContainerClassName : String;
	public var contentContainerStyle : Dynamic; // FIXME
	public var initialSelectedIndex : Int;
	public var inkBarStyle : Dynamic; // FIXME
	public var onChange : Dynamic -> Void; // FIXME
	public var style : Dynamic; // FIXME
	public var tabItemContainerStyle : Dynamic; // FIXME
	public var tabTemplate : Dynamic -> Dynamic; // FIXME
	public var value : Dynamic; // FIXME
}