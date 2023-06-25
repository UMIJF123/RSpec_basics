# frozen_string_literal: true

# Represents a user in the system.
#
# This class provides the necessary properties and methods to manage user information
# and perform user-related actions.
class User
  attr_reader :admin

  def initialize(admin: false)
    @admin = admin
  end
end
