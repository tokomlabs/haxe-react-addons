package api.react.addon.material;

@:jsRequire("material-ui/lib/raised-button")
extern class RaisedButton
{
	public var label : String;
	public var primary : Bool;
	public var secondary : Bool;
	public var linkButton : Bool;
	public var href : String;
	public var disabled : Bool;
}