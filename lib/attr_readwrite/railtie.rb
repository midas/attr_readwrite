require 'rails'

module AttrReadwrite

  class Railtie < ::Rails::Railtie

    #initializer "attr_readwrite.initialize" do
      #if defined?( ActiveRecord::Base )
        #ActiveRecord::Base.send( :include, AttrReadwrite::ActiveRecordExtensions )
      #end
    #end

    initializer 'attr_readwrite.insert_into_active_record' do
      ActiveSupport.on_load :active_record do
        ActiveRecord::Base.send( :include, AttrReadwrite::ActiveRecordExtensions )
      end
    end

  end

end
