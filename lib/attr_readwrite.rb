require "attr_readwrite/railtie" if defined?( ::Rails )
require "attr_readwrite/version"

module AttrReadwrite

  autoload :ActiveRecordExtensions, 'attr_readwrite/active_record_extensions'

end
