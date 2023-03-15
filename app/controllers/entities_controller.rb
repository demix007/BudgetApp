class EntitiesController < ApplicationController
  def index; end

  def show; end

  def new
    @entity = current_user.entities.new
    @relation = Relation.new(entity: @entity)
  end
end
