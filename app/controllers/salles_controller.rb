class SallesController < ApplicationController
  # GET /salles
  # GET /salles.xml
  before_filter :authenticate_user!
  helper_method :sort_column, :sort_direction
  
  def index
   
    @salles = Salle.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 10, :page => params[:page])
   
    respond_to do |format|
        format.html
    end
  end

  # GET /salles/1
  # GET /salles/1.xml
  def show
    @salle = Salle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @salle }
    end
  end

  # GET /salles/new
  # GET /salles/new.xml
  def new
    @salle = Salle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @salle }
    end
  end

  # GET /salles/1/edit
  def edit
    @salle = Salle.find(params[:id])
  end

  # POST /salles
  # POST /salles.xml
  def create
    @salle = Salle.new(params[:salle])

    respond_to do |format|
      if @salle.save
        format.html { redirect_to(@salle, :notice => 'Salle was successfully created.') }
        format.xml  { render :xml => @salle, :status => :created, :location => @salle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @salle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salles/1
  # PUT /salles/1.xml
  def update
    @salle = Salle.find(params[:id])

    respond_to do |format|
      if @salle.update_attributes(params[:salle])
        format.html { redirect_to(@salle, :notice => 'Salle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @salle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salles/1
  # DELETE /salles/1.xml
  def destroy
    @salle = Salle.find(params[:id])
    @salle.destroy

    respond_to do |format|
      format.html { redirect_to(salles_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def sort_column
    Salle.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
