class GroupsController < ApplicationController
  def index
    @groups = current_user.groups.all
  end

  def show; end

  def new; end
end
