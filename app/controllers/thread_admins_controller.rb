class ThreadAdminsController < ApplicationController
  before_action :set_thread_admin, only: [:show, :edit, :update, :destroy]

  # GET /thread_admins
  # GET /thread_admins.json
  def index
    @thread_admins = ThreadAdmin.all
  end

  # GET /thread_admins/1
  # GET /thread_admins/1.json
  def show
  end

  # GET /thread_admins/new
  def new
    @thread_admin = ThreadAdmin.new
  end

  # GET /thread_admins/1/edit
  def edit
  end

  # POST /thread_admins
  # POST /thread_admins.json
  def create
    @thread_admin = ThreadAdmin.new(thread_admin_params)

    respond_to do |format|
      if @thread_admin.save
        format.html { redirect_to @thread_admin, notice: 'Thread admin was successfully created.' }
        format.json { render :show, status: :created, location: @thread_admin }
      else
        format.html { render :new }
        format.json { render json: @thread_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thread_admins/1
  # PATCH/PUT /thread_admins/1.json
  def update
    respond_to do |format|
      if @thread_admin.update(thread_admin_params)
        format.html { redirect_to @thread_admin, notice: 'Thread admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @thread_admin }
      else
        format.html { render :edit }
        format.json { render json: @thread_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thread_admins/1
  # DELETE /thread_admins/1.json
  def destroy
    @thread_admin.destroy
    respond_to do |format|
      format.html { redirect_to thread_admins_url, notice: 'Thread admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thread_admin
      @thread_admin = ThreadAdmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thread_admin_params
      params.require(:thread_admin).permit(:title, :body, :user_id)
    end
end
