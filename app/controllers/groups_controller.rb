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
    group = current_user.groups.new(group_params)
    respond_to do |format|
      format.html do
        if group.save
          redirect_to groups_path
        else
          render :new
        end
      end
    end
  end

  def destroy
    @group = current_user.groups.find(params[:id])
    @group.destroy
    redirect_to groups_path
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
