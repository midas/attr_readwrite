module AttrReadwrite

  module ActiveRecordExtensions

    def self.included( base )
      base.extend ClassMethods
    end

    module ClassMethods

      def attr_readwrite( attr_names )
        readwrite_attr_names = Array( attr_names ).map( &:to_s )
        attr_readonly *(column_names - readwrite_attr_names - %w(id))
      end

      def readwrite_attributes
        column_names - readonly_attributes.to_a
      end

    end

  end

end
