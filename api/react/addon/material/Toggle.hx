package api.react.addon.material;

/*
@:jsRequire("material-ui/lib/toggle")
extern class Toggle
{
	public var defaultToggled : Bool;
	public var elementStyle : Dynamic;
	public var label : Dynamic;
	public var labelStyle : Dynamic;
	public var labelPosition : String;
	public var name : String;
	public var style : Dynamic;
	public var value : String;

	public function isToggled() : Bool;
	public function setToggled(v : Bool) : Void;
	public function onToggle(ev : js.html.Event, toggled : Bool) : Void;
}
*/
import api.react.ReactComponent;

typedef ToggleProps = {
    defaultToggled : Bool,
    elementStyle : Dynamic,
    label : Dynamic,
    labelStyle : Dynamic,
    labelPosition : String,
    name : String,
    style : Dynamic,
    value : String
}

extern typedef Toggle = ReactComponentOf<ToggleProps, Dynamic, Dynamic>