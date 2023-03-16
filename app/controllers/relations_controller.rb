class RelationsController < ApplicationController
  def index
    @relation = Relation.new
    @entity = current_user.entities.new
    @group = Group.all
  end
  
  def new
    @relation = Relation.new
    @entity = current_user.entities.new
    @group = Group.all
  end
end
