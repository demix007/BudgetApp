class RelationsController < ApplicationController
  def new
    @group = Group.all
    @entity = current_user.entities.new
    @relation = Relation.new
  end
end
