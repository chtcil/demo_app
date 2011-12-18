class EmpolyeesController < ApplicationController
  # GET /empolyees
  # GET /empolyees.json
  def index
    @empolyees = Empolyee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @empolyees }
    end
  end

  # GET /empolyees/1
  # GET /empolyees/1.json
  def show
    @empolyee = Empolyee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @empolyee }
    end
  end

  # GET /empolyees/new
  # GET /empolyees/new.json
  def new
    @empolyee = Empolyee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @empolyee }
    end
  end

  # GET /empolyees/1/edit
  def edit
    @empolyee = Empolyee.find(params[:id])
  end

  # POST /empolyees
  # POST /empolyees.json
  def create
    @empolyee = Empolyee.new(params[:empolyee])

    respond_to do |format|
      if @empolyee.save
        format.html { redirect_to @empolyee, notice: 'Empolyee was successfully created.' }
        format.json { render json: @empolyee, status: :created, location: @empolyee }
      else
        format.html { render action: "new" }
        format.json { render json: @empolyee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /empolyees/1
  # PUT /empolyees/1.json
  def update
    @empolyee = Empolyee.find(params[:id])

    respond_to do |format|
      if @empolyee.update_attributes(params[:empolyee])
        format.html { redirect_to @empolyee, notice: 'Empolyee was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @empolyee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empolyees/1
  # DELETE /empolyees/1.json
  def destroy
    @empolyee = Empolyee.find(params[:id])
    @empolyee.destroy

    respond_to do |format|
      format.html { redirect_to empolyees_url }
      format.json { head :ok }
    end
  end
end
