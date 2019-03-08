class ResumeController < ApplicationController
  def index
    name = params[:person].sub!('+', ' ')
    @person = Self.where("lower(name) = ?", name).first
  end
end
