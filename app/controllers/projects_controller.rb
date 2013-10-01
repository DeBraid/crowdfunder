class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all 
  end

  def show 
    @project = Project.find(params[:id])
  end

    # respond_to do |format|
    #   format.html
    #   format.json {render json: @project }
end

# def new
#     @project = Project.new

#     respond_to do |format|
#       format.html
#       format.json {render json: @project }
#     end
#   end

#   def edit
#     @project = project.find(params[:id])
#   end

#   def create
#     @project = project.create(project_params)

#     respond_to do |format|
#       if @project.save
#         format.html { redirect_to @project, notice: 'project was successfully created!'}
#         format.json { render json: @project, status: :created, location: @project} 
#       else
#         format.html { render action: "new" }
#         format.json { render json: @project.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   def update
#     @project = project.find(params[:id])

#     respond_to do |format|
#       if @project.update_attributes(project_params)
#         format.html { redirect_to @project, notice: 'project Update Successful.'}
#         format.json { head :no_content }
#       else
#         format.html { render action: 'edit'}
#         format.json { render json: @project.errors, status: :unprocessable_entity }
#       end
#     end
#   end
  
#   def destroy
#     @project = project.find(params[:id])
#     @project.destroy

#     respond_to do |format|
#       format.html { redirect_to projects_url }
#       format.json { had :no_content }  
#     end
#   end

#   def search
#     # run this method after searching
#   end

  private
    def project_params
      params.require(:title).permit(:title, :email, :first_name, :last_name, :teaser, :description, :goal, :user_id)
    end  
# end


# end
