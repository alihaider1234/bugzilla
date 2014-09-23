class BugsController < ApplicationController
   #load_and_authorize_resource
   #check_authorization

   def list
      #authorize! :list, @bugs
      @bugs = Bug.includes(:project,:user)
      
   end

   def show
      #authorize! :show, @bug
      @bug = Bug.find(params[:id])
      
   end

   def new
       #authorize! :new, @bug
      @bug = Bug.new
     
   end

   def create

      @bug = current_user.bugs.build(params[:bug])

      if @bug.save!
         redirect_to :action => 'list'
      else
         render :action => 'new'
      end

   end

   def edit
       #authorize! :edit, @bug
      @bug = Bug.find(params[:id])
     
   end

   def update

      @bug = Bug.find(params[:id])
      if @bug.update_attributes(params[:bug])
         redirect_to :action => 'list'#, :id => @bug, :notice => "Updated"
      else
         render :action => 'edit'
      end
   end

   def destroy
      #authorize! :destroy, @bug
      Bug.find(params[:id]).destroy
      redirect_to :action => 'list'

   end

   def show_projects

      @project = Project.find(params[:id])
   end

end
