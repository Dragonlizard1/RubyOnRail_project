class User1sController < ApplicationController
  before_action :set_user1, only: [:show, :edit, :update, :destroy]
  @@total = 0

  def welcome
    redirect_to "/users"
  end
  # GET /user1s
  # GET /user1s.json
  def index
    @user1s = User1.all
  end

  # GET /user1s/1
  # GET /user1s/1.json
  def show
  end
 
  def total
    @data = User1.all
    @text1 = "There is #{@data.length} users."
    render text: @text1
  end
  # GET /user1s/new
  def new
    @user1 = User1.new
  end

  # GET /user1s/1/edit
  def edit
  end

  # POST /user1s
  # POST /user1s.json
  def create
    @user1 = User1.new(user1_params)

    respond_to do |format|
      if @user1.save
        format.html { redirect_to "/users", notice: 'User1 was successfully created.' }
        format.json { render :show, status: :created, location: @user1 }
      else
        format.html { render :new }
        format.json { render json: @user1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user1s/1
  # PATCH/PUT /user1s/1.json
  def update
    respond_to do |format|
      if @user1.update(user1_params)
        format.html { redirect_to @user1, notice: 'User1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @user1 }
      else
        format.html { render :edit }
        format.json { render json: @user1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user1s/1
  # DELETE /user1s/1.json
  def destroy
    @user1.destroy
    respond_to do |format|
      format.html { redirect_to user1s_url, notice: 'User1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user1
      @user1 = User1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user1_params
      params.require(:user1).permit(:name)
    end
end
