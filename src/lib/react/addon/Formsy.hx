package react.addon;

/**
Extern for [ReactIntl](https://github.com/christianalfoni/formsy-react)
**/
@:jsRequire('formsy-react')
extern class Formsy {
	@:native('HOC')
	static public function hoc(comp : Dynamic) : Dynamic;

	static public function addValidationRule(name : String, ruleFunc : haxe.extern.Rest<Dynamic> -> Bool) : Void;
}
