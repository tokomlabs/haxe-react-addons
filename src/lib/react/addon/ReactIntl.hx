package react.addon;

/**
Extern for [ReactIntl](https://github.com/yahoo/react-intl)
**/
@:jsRequire('react-intl')
extern class ReactIntl {
	static public function injectIntl(cmp : Dynamic) : Dynamic;
	static public function addLocaleData(data : Dynamic) : Void;
}
