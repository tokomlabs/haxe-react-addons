package react.addon.materialui;

@:jsRequire("material-ui/lib/checkbox")
extern class Checkbox
{
	public var name : String;
	public var value : String;
	public var label : String;
	public var defaultChecked : Bool;
	public var disabled : Bool;
	public var checkedIcon : Dynamic;
	public var unCheckedIcon : Dynamic;
}