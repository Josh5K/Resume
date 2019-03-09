class PortfolioController < ApplicationController
    def index
        name = params[:person].sub!('+', ' ').downcase
        @person = Self.where("lower(name) = ?", name).first

        if not @person
            render status: 404, json: { message: "404, Resume Not Found!" }
        end
    end
end
