class RenaissesController < ApplicationController
  before_action :set_renaiss, only: %i[ show edit update destroy ]

  # GET /renaisses or /renaisses.json
  def index
    @renaisses = Renaiss.all
  end

  # GET /renaisses/1 or /renaisses/1.json
  def show
  end

  # GET /renaisses/new
  def new
    @renaiss = Renaiss.new
  end

  # GET /renaisses/1/edit
  def edit
  end

  # POST /renaisses or /renaisses.json
  def create
    @renaiss = Renaiss.new(renaiss_params)

    respond_to do |format|
      if @renaiss.save
        format.html { redirect_to @renaiss, notice: "Renaiss was successfully created." }
        format.json { render :show, status: :created, location: @renaiss }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @renaiss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renaisses/1 or /renaisses/1.json
  def update
    respond_to do |format|
      if @renaiss.update(renaiss_params)
        format.html { redirect_to @renaiss, notice: "Renaiss was successfully updated." }
        format.json { render :show, status: :ok, location: @renaiss }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @renaiss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renaisses/1 or /renaisses/1.json
  def destroy
    @renaiss.destroy!

    respond_to do |format|
      format.html { redirect_to renaisses_path, status: :see_other, notice: "Renaiss was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renaiss
      @renaiss = Renaiss.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def renaiss_params
      params.expect(renaiss: [ :author, :born_died, :title, :date, :technique, :location, :url, :form, :type, :school, :timeframe ])
    end
end
