require 'spec_helper'

describe User do
	it 'is invalid without a name' do
  user = User.new
  user.should_not be_valid
	end

# describe User do
# 	it 'is invalid without an email' do
#   user = User.new
#   user.should_not be_valid
# 	end
end
