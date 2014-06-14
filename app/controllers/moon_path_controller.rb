class MoonPathController < ApplicationController

  def show

    render 'moon_path/show'

  end

  def fetch

    respond_to do |format|

      begin

        MoonPath.delay.fetch # TODO run `rake jobs:work` to execute delayed methods

        format.json { head :no_content }

      rescue StandardError => e

        format.json { head :internal_server_error }
      end

    end

  end

end