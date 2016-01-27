class InfosController < ApplicationController
  #before_filter :initialize_user_role
  #skip_load_resource only: [:create]
  before_filter :authenticate_user! 
  #load_and_authorize_resource
  load_and_authorize_resource except: [:create]
  before_action :set_info, only: [:show, :edit, :update, :destroy]

  # GET /infos
  # GET /infos.json
  def index
    @infos = Info.all
  end

  # GET /infos/1
  # GET /infos/1.json
  def show
    #@infos = Info.find(params[:id])
 
  end

  # GET /infos/new
  def new
    @info = Info.new
  end

  # GET /infos/1/edit
  def edit
  end

  # POST /infos
  # POST /infos.json
  def create
    @info = Info.new(info_params)

    respond_to do |format|
      if @info.save
        format.html { redirect_to @info, notice: 'Info was successfully created.' }
        format.json { render :show, status: :created, location: @info }
      else
        format.html { render :new }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infos/1
  # PATCH/PUT /infos/1.json
  def update
    respond_to do |format|
      if @info.update(info_params)
        format.html { redirect_to @info, notice: 'Info was successfully updated.' }
        format.json { render :show, status: :ok, location: @info }
      else
        format.html { render :edit }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infos/1
  # DELETE /infos/1.json
  def destroy
    @info.destroy
    respond_to do |format|
      format.html { redirect_to infos_url, notice: 'Info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = Info.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_params
      params.require(:info).permit(:first_name, :last_name, :father_name, :DOB, :DOJ, :Expericence, :prevoius_company, :address, :contact_no, :Reference_contact_no, :sallry, :probation)
    end
end
