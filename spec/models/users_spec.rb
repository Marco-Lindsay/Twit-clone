require 'spec_helper'

describe User do

 before do
   @user = User.new
   @user.valid?
  end


  it "should require a name" do
    @user.errors.full_messages.should include "Name can't be blank"
  end

  it "should require an email" do
    @user.errors.full_messages.should include "Email can't be blank"
  end


end
