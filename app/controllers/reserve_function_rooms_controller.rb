class ReserveFunctionRoomsController < ApplicationController
  # GET /reserve_function_rooms
  # GET /reserve_function_rooms.json
  def index
    
   # redirect_to Reservation.find(params[:reservation_id])
   
   #s @reserve_function_rooms = ReserveFunctionRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reserve_function_rooms }
    end
  end

  # GET /reserve_function_rooms/1
  # GET /reserve_function_rooms/1.json
  def show
   # redirect_to Reservation.find(params[:reservation_id])
    @reserve_function_room = ReserveFunctionRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reserve_function_room }
    end
  end

  # GET /reserve_function_rooms/new
  # GET /reserve_function_rooms/new.json
  def new
    @reservation = Reservation.find(params[:reservation_id])
    @reserve_function_room = @reservation.reserve_function_rooms.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reserve_function_room }
    end
  end

  # GET /reserve_function_rooms/1/edit
  def edit
    @reserve_function_room = ReserveFunctionRoom.find(params[:id])
  end

  # POST /reserve_function_rooms
  # POST /reserve_function_rooms.json
  def create
    @reservation = Reservation.find(params[:reservation_id])
    @reserve_function_room = @reservation.reserve_function_rooms.build(params[:reserve_function_room])

    respond_to do |format|
      if @reserve_function_room.save
        format.html { redirect_to @reservation, notice: 'Reserve function room was successfully created.' }
        format.json { render json: @reserve_function_room, status: :created, location: @reserve_function_room }
      else
        format.html { render action: "new" }
        format.json { render json: @reserve_function_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reserve_function_rooms/1
  # PUT /reserve_function_rooms/1.json
  def update
    #@reserve_function_room = ReserveFunctionRoom.find(params[:id])
     @reservefunctionroom = Reserve_function_room.find(params[:id])
    respond_to do |format|
      if @reserve_function_room.update_attributes(params[:reserve_function_room])
        format.html { redirect_to @reserve_function_room, notice: 'Reserve function room was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reserve_function_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserve_function_rooms/1
  # DELETE /reserve_function_rooms/1.json
  def destroy
    @reserve_function_room = ReserveFunctionRoom.find(params[:id])
    @reserve_function_room.destroy

    respond_to do |format|
      format.html { redirect_to reserve_function_rooms_url }
      format.json { head :no_content }
    end
  end
end
