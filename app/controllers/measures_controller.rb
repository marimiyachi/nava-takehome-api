class MeasuresController < ApplicationController
  before_action :set_measure, only: [:show, :update, :destroy]

  # GET /measures
  def index
    @measures = Measure.all
    json_response(@measures)
  end

  # POST /measures
  def create
    @measure = Measure.create!(measure_params)
    json_response(@measure.body, :created)
  end

  # GET /measures/:measure_id
  def show
    json_response(@measure.body)
  end

  # PUT /measures/:measure_id
  def update
    @measure.update(measure_params)
    head :no_content
  end

  # DELETE /measures/:measure_id
  def destroy
    @measure.destroy
    head :no_content
  end

  private

  def measure_params
    params[:body] = request.raw_post
    params.permit(:measure_id, :body)
  end

  def set_measure
    @measure = Measure.where("measure_id = ?", params[:id]).first
  end
end
