class GroupsController < ApplicationController
  def index
    @groups = current_user.groups.all
  end

  def new
    @group = current_user.groups.new
  end

  def show
    @group = Group.find(params[:id])
    @relations = @group.relations.order('created_at DESC')
  end

  def create
    
  end
end
