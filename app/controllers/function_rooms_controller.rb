class FunctionRoomsController < ApplicationController
  # GET /function_rooms
  # GET /function_rooms.json
  def index
    @function_rooms = FunctionRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @function_rooms }
    end
  end

  # GET /function_rooms/1
  # GET /function_rooms/1.json
  def show
    @function_room = FunctionRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @function_room }
    end
  end

  # GET /function_rooms/new
  # GET /function_rooms/new.json
  def new
    @function_room = FunctionRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @function_room }
    end
  end

  # GET /function_rooms/1/edit
  def edit
    @function_room = FunctionRoom.find(params[:id])
  end

  # POST /function_rooms
  # POST /function_rooms.json
  def create
    @function_room = FunctionRoom.new(params[:function_room])

    respond_to do |format|
      if @function_room.save
        format.html { redirect_to @function_room, notice: 'Function room was successfully created.' }
        format.json { render json: @function_room, status: :created, location: @function_room }
      else
        format.html { render action: "new" }
        format.json { render json: @function_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /function_rooms/1
  # PUT /function_rooms/1.json
  def update
    @function_room = FunctionRoom.find(params[:id])

    respond_to do |format|
      if @function_room.update_attributes(params[:function_room])
        format.html { redirect_to @function_room, notice: 'Function room was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @function_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /function_rooms/1
  # DELETE /function_rooms/1.json
  def destroy
    @function_room = FunctionRoom.find(params[:id])
    @function_room.destroy

    respond_to do |format|
      format.html { redirect_to function_rooms_url }
      format.json { head :no_content }
    end
  end
end
