class MyOrganizersController < ApplicationController
  # GET /my_organizers
  # GET /my_organizers.json
  def index
    @my_organizers = MyOrganizer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @my_organizers }
    end
  end

  # GET /my_organizers/1
  # GET /my_organizers/1.json
  def show
    @my_organizer = MyOrganizer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @my_organizer }
    end
  end

  # GET /my_organizers/new
  # GET /my_organizers/new.json
  def new
    @my_organizer = MyOrganizer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @my_organizer }
    end
  end

  # GET /my_organizers/1/edit
  def edit
    @my_organizer = MyOrganizer.find(params[:id])
  end

  # POST /my_organizers
  # POST /my_organizers.json
  def create
    @my_organizer = MyOrganizer.new(params[:my_organizer])

    respond_to do |format|
      if @my_organizer.save
        format.html { redirect_to @my_organizer, notice: 'My organizer was successfully created.' }
        format.json { render json: @my_organizer, status: :created, location: @my_organizer }
      else
        format.html { render action: "new" }
        format.json { render json: @my_organizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /my_organizers/1
  # PUT /my_organizers/1.json
  def update
    @my_organizer = MyOrganizer.find(params[:id])

    respond_to do |format|
      if @my_organizer.update_attributes(params[:my_organizer])
        format.html { redirect_to @my_organizer, notice: 'My organizer was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @my_organizer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_organizers/1
  # DELETE /my_organizers/1.json
  def destroy
    @my_organizer = MyOrganizer.find(params[:id])
    @my_organizer.destroy

    respond_to do |format|
      format.html { redirect_to my_organizers_url }
      format.json { head :ok }
    end
  end
end
