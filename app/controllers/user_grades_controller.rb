class UserGradesController < ApplicationController
  before_action :set_user_class, only: %i[ show edit update destroy ]

  # GET /user_grades or /user_grades.json
  def index
    @user_grades = UserClass.all
  end

  # GET /user_grades/1 or /user_grades/1.json
  def show
  end

  # GET /user_grades/new
  def new
    @user_class = UserClass.new
  end

  # GET /user_grades/1/edit
  def edit
  end

  # POST /user_grades or /user_grades.json
  def create
    @user_class = UserClass.new(user_class_params)

    respond_to do |format|
      if @user_class.save
        format.html { redirect_to user_class_url(@user_class), notice: "User class was successfully created." }
        format.json { render :show, status: :created, location: @user_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_grades/1 or /user_grades/1.json
  def update
    respond_to do |format|
      if @user_class.update(user_class_params)
        format.html { redirect_to user_class_url(@user_class), notice: "User class was successfully updated." }
        format.json { render :show, status: :ok, location: @user_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_grades/1 or /user_grades/1.json
  def destroy
    @user_class.destroy

    respond_to do |format|
      format.html { redirect_to user_grades_url, notice: "User class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_class
      @user_class = UserClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_class_params
      params.fetch(:user_class, {})
    end
end
