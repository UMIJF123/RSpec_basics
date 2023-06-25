# frozen_string_literal: true

require_relative '../user'

describe User do
  # it is used to define the user method. If it is a class method, it would be write like '.user'
  describe '#user' do
    # it is used to initialize the user and store it in a variable for later user.
    let(:user) { described_class.new(admin: admin) }
    let(:admin) { false }

    # subject is used to initialize the user and store it in a instance of user. here admin=false as defined in above 
    subject { User.new(admin: admin) }
    context 'not an admin' do
      it { is_expected.to have_attributes(admin: false) }

      # it 'returns false' do
      #   expect(user.admin).to eq(false)
      # end
    end
    context 'is an admin' do
      let(:admin) { true }
      it { is_expected.to have_attributes(admin: true) }

      # it 'returns true' do
      #   expect(user.admin).to eq(true)
      # end
    end
  end
end
