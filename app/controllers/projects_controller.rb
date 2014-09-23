class ProjectsController < ApplicationController
   def new
      @project = Project.new
   end

   def create
      @p = Project.new(params[:project])
      if @p.save
            redirect_to :action => 'index'
      else
            render :action => 'new'
      end
   end

   def index
      @projects = Project.find(:all)
   end
end
