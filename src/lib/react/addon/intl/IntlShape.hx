package react.addon.intl;

typedef MessageDescriptor = {
	id : String,
	? defaultMessage : String
}

extern class IntlShape {
	public function formatDate(value : Dynamic, ? options : Dynamic) : String;
	public function formatTime(value : Dynamic, ? options : Dynamic) : String;
	public function formatRelative(value : Dynamic, ? options : Dynamic) : String;
	public function formatNumber(value : Dynamic, ? options : Dynamic) : String;
	public function formatPlural(value : Dynamic, ? options : Dynamic) : String;
	public function formatMessage(messageDescriptor : MessageDescriptor, ? values : haxe.DynamicAccess<String>) : String;
	public function formatHTMLMessage(messageDescriptor : MessageDescriptor, ? values : haxe.DynamicAccess<String>) : String;
}
