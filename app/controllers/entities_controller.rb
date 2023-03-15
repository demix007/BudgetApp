class EntitiesController < ApplicationController
  def index; end

  def show; end

  def new
    @entity = current_user.entities.new
    @relation = Relation.new(entity: @entity)
  end

  def create
    entity = current_user.entities.new(entity_params)
    respond_to do |format|
      format.html do
        if entity.save
          relation = Relation.create(group_id: group_params, entity_id: entity.id)
          redirect_to group_path(relation.group_id)
        else
          render :new
        end
      end
    end
  end

  def destroy
    @entity = current_user.entities.find(params[:id])
    @entity.destroy
    redirect_to groups_path
  end

  def group_params
    params[:entity][:relation][:group_id]
  end

  def entity_params
    params.require(:entity).permit(:name, :amount)
  end
end
