class ProducerContactsController < ApplicationController
  before_action :set_producer_contact, only: [:show, :edit, :update, :destroy]
  before_action :set_producer, only: [:new, :create, :update, :edit, :update]

  # GET /producer_contacts
  # GET /producer_contacts.json
  def index
    @producer_contacts = ProducerContact.all
  end

  # GET /producer_contacts/1
  # GET /producer_contacts/1.json
  def show
  end

  # GET /producer_contacts/new
  def new
    @producer_contact = ProducerContact.new
  end

  # GET /producer_contacts/1/edit
  def edit
  end

  # POST /producer_contacts
  # POST /producer_contacts.json
  def create
    @producer_contact = ProducerContact.new(producer_contact_params)
    # binding.pry
    @producer_contact.producer = @producer
    respond_to do |format|
      if @producer_contact.save
        format.html { redirect_to producer_path(@producer), notice: 'Producer contact was successfully created.' }
        format.json { render :show, status: :created, location: @producer_contact }
      else
        format.html { render :new }
        format.json { render json: @producer_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producer_contacts/1
  # PATCH/PUT /producer_contacts/1.json
  def update
    respond_to do |format|
      if @producer_contact.update(producer_contact_params)
        format.html { redirect_to @producer_contact, notice: 'Producer contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @producer_contact }
      else
        format.html { render :edit }
        format.json { render json: @producer_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producer_contacts/1
  # DELETE /producer_contacts/1.json
  def destroy
    @producer_contact.destroy
    respond_to do |format|
      format.html { redirect_to producer_contacts_url, notice: 'Producer contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_producer
      @producer = Producer.find(params[:producer_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_producer_contact
      @producer_contact = ProducerContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producer_contact_params
      params.require(:producer_contact).permit(:firstname, :lastname, :phone, :description)
    end
end
