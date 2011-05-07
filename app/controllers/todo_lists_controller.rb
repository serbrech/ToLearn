class TodoListsController < ApplicationController
  
  respond_to :html
  
  # GET /todo_lists
  # GET /todo_lists.xml
  def index
    @todo_lists = TodoList.all
  end

  # GET /todo_lists/1
  # GET /todo_lists/1.xml
  def show
    @todo_list = TodoList.find(params[:id])

  end

  # GET /todo_lists/new
  # GET /todo_lists/new.xml
  def new
    @todo_list = TodoList.new
  end

  # GET /todo_lists/1/edit
  def edit
    @todo_list = TodoList.find(params[:id])
  end

  # POST /todo_lists
  # POST /todo_lists.xml
  def create
    @todo_list = TodoList.new(params[:todo_list])

    respond_to do |format|
      if @todo_list.save
        format.html { redirect_to(@todo_list, :notice => 'Todo list was successfully created.') }
        format.xml  { render :xml => @todo_list, :status => :created, :location => @todo_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @todo_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /todo_lists/1
  # PUT /todo_lists/1.xml
  def update
    @todo_list = TodoList.find(params[:id])

    respond_to do |format|
      if @todo_list.update_attributes(params[:todo_list])
        format.html { redirect_to(@todo_list, :notice => 'Todo list was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @todo_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_lists/1
  # DELETE /todo_lists/1.xml
  def destroy
    @todo_list = TodoList.find(params[:id])
    @todo_list.destroy

    respond_to do |format|
      format.html { redirect_to(todo_lists_url) }
      format.xml  { head :ok }
    end
  end
end
