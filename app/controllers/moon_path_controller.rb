class MoonPathController < ApplicationController
  respond_with :json

  def view

    begin

      MoonPath.delay.fetch # TODO run `rake jobs:work` to execute delayed methods

      head :no_content

    rescue StandardError => e

      head :internal_server_error
    end

  end

end