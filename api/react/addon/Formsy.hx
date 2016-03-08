package api.react.addon;

/**
Extern for [ReactIntl](https://github.com/christianalfoni/formsy-react)
**/
@:jsRequire('formsy-react')
extern class Formsy {
	@:native('HOC')
	static public function hoc(comp : Dynamic) : Dynamic;
}
