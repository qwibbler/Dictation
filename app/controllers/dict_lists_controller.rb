class DictListsController < ApplicationController
  before_action :set_dict_list, only: %i[ show edit update destroy ]

  # GET /dict_lists or /dict_lists.json
  def index
    @dict_lists = DictList.all
  end

  # GET /dict_lists/1 or /dict_lists/1.json
  def show
  end

  # GET /dict_lists/new
  def new
    @dict_list = DictList.new
  end

  # GET /dict_lists/1/edit
  def edit
  end

  # POST /dict_lists or /dict_lists.json
  def create
    @dict_list = DictList.new(dict_list_params)

    respond_to do |format|
      if @dict_list.save
        format.html { redirect_to dict_list_url(@dict_list), notice: "Dict list was successfully created." }
        format.json { render :show, status: :created, location: @dict_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dict_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dict_lists/1 or /dict_lists/1.json
  def update
    respond_to do |format|
      if @dict_list.update(dict_list_params)
        format.html { redirect_to dict_list_url(@dict_list), notice: "Dict list was successfully updated." }
        format.json { render :show, status: :ok, location: @dict_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dict_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dict_lists/1 or /dict_lists/1.json
  def destroy
    @dict_list.destroy

    respond_to do |format|
      format.html { redirect_to dict_lists_url, notice: "Dict list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dict_list
      @dict_list = DictList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dict_list_params
      params.fetch(:dict_list, {})
    end
end
