class TimeMachinesController < ApplicationController
  def create
    @time_machine = TimeMachine.create!(timemachine_params)
    json_response(@time_machine, :created)
  end

  private
    def timemachine_params
      params.permit(:status, :recorded_at, :external_id)
    end
end
