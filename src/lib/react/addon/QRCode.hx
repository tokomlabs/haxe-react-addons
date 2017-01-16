package react.addon;

import react.ReactComponent;

@:enum
abstract QRCodeLevel(String) from String to String {
	var L = 'L';
	var M = 'M';
	var Q = 'Q';
	var H = 'H';
}

typedef QRCodeProps = {
	value : String,
	size : Int,
	bgColor : String,
	fgColor : String,
	level : QRCodeLevel
}

/**
Extern for [qrcode.react](https://github.com/zpao/qrcode.react).
**/
@:jsRequire('qrcode.react')
extern class QRCode extends ReactComponentOf<QRCodeProps, Dynamic, Dynamic> { }
