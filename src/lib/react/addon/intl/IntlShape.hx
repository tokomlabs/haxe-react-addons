package react.addon.intl;

typedef MessageDescriptor = {
	id : String,
	? defaultMessage : String
}

extern class IntlShape {
	public var locale : String;
	public var formats : Dynamic;
    public var messages : haxe.DynamicAccess<String>;
    public var defaultLocale : String;
    public var defaultFormats : Dynamic;
	public function now() : Int;
	public function formatDate(value : Dynamic, ? options : Dynamic) : String;
	public function formatTime(value : Dynamic, ? options : Dynamic) : String;
	public function formatRelative(value : Dynamic, ? options : Dynamic) : String;
	public function formatNumber(value : Dynamic, ? options : Dynamic) : String;
	public function formatPlural(value : Dynamic, ? options : Dynamic) : String;
	public function formatMessage(messageDescriptor : MessageDescriptor, ? values : haxe.DynamicAccess<String>) : String;
	public function formatHTMLMessage(messageDescriptor : MessageDescriptor, ? values : haxe.DynamicAccess<String>) : String;
}
