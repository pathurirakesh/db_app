class MicroopostsController < ApplicationController
  before_action :set_microopost, only: [:show, :edit, :update, :destroy]

  # GET /microoposts
  # GET /microoposts.json
  def index
    @microoposts = Microopost.all
  end

  # GET /microoposts/1
  # GET /microoposts/1.json
  def show
  end

  # GET /microoposts/new
  def new
    @microopost = Microopost.new
  end

  # GET /microoposts/1/edit
  def edit
  end

  # POST /microoposts
  # POST /microoposts.json
  def create
    @microopost = Microopost.new(microopost_params)

    respond_to do |format|
      if @microopost.save
        format.html { redirect_to @microopost, notice: 'Microopost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @microopost }
      else
        format.html { render action: 'new' }
        format.json { render json: @microopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microoposts/1
  # PATCH/PUT /microoposts/1.json
  def update
    respond_to do |format|
      if @microopost.update(microopost_params)
        format.html { redirect_to @microopost, notice: 'Microopost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @microopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microoposts/1
  # DELETE /microoposts/1.json
  def destroy
    @microopost.destroy
    respond_to do |format|
      format.html { redirect_to microoposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microopost
      @microopost = Microopost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microopost_params
      params.require(:microopost).permit(:content, :user_id)
    end
end
