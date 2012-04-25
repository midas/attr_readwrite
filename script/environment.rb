ActiveRecord::Base.configurations = YAML::load( IO.read( File.dirname(__FILE__) + '/../spec/database.yml' ) )
ActiveRecord::Base.establish_connection( 'test' )

silence_stream STDOUT do

  ActiveRecord::Schema.define :version => 1 do
    create_table :somethings, :force => true do |t|
      t.string :name, :description
    end
  end

end
