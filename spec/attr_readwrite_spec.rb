require 'spec_helper'
require 'rails_spec_helper'

describe AttrReadwrite do

  context 'when attr_readwrite has not been used' do

    before :each do
      class Something < ActiveRecord::Base
      end
    end

    it "should have the correct #column_names" do
      Something.column_names.should == %w(id name description)
    end

    it "should add the correct read only attributes" do
      Something.readonly_attributes.should == []
    end

    it "should have the correct #readwrite_attributes" do
      Something.readwrite_attributes.should == %w(id name description)
    end

  end

  context 'when attr_readwrite has been used' do

    before :each do
      class Something < ActiveRecord::Base
        attr_readwrite :name
      end
    end

    it "should have the correct #column_names" do
      Something.column_names.should == %w(id name description)
    end

    it "should add the correct read only attributes" do
      Something.readonly_attributes.to_a.should == %w(description)
    end

    it "should have the correct #readwrite_attributes" do
      Something.readwrite_attributes.should == %w(id name)
    end

  end

end
