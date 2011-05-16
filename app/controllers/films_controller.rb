class FilmsController < ApplicationController
  before_filter :authenticate_user!
  autocomplete :function, :name
  autocomplete :person, :name
  autocomplete :film, :country
  autocomplete :film, :company
  autocomplete :film, :color
  autocomplete :film, :sound
  
  helper_method :sort_column, :sort_direction
  
  #autocomplete :joint, :salle_id
  
  
  # GET /films
  # GET /films.xml
  
  def index
    @films = Film.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 10, :page => params[:page])
  end
  
  def all
    @films = Film.all
  end

  # GET /films/1
  # GET /films/1.xml
  def show
    @film = Film.find(params[:id])
    jointure
    
   
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @film }
    end
  end

  # GET /films/new
  # GET /films/new.xml
  def new
    @film = Film.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @film }
      format.js { render :layout=>false }
    end
  end

  # GET /films/1/edit
  def edit
    @film = Film.find(params[:id])
    jointure
    #respond_to do |format|
      #format.js  
    #end
  end
  
  
  # POST /films
  # POST /films.xml
  def create
    @film = Film.new(params[:film])
    respond_to do |format|
      if @film.save
        format.html { redirect_to(@film, :notice => 'Film was successfully created.') }
        format.xml  { render :xml => @film, :status => :created, :location => @film }
        format.js { render :layout=>false }
        
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @film.errors, :status => :unprocessable_entity }
        format.js { render 'fail_create.js.erb' } 
      end
    end
  end

  # PUT /films/1
  # PUT /films/1.xml
  def update
    @film = Film.find(params[:id])
    jointure
    respond_to do |format|
      if @film.update_attributes(params[:film])
        format.html { redirect_to(@film, :notice => 'Film was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @film.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /films/1
  # DELETE /films/1.xml
  def destroy
    @film = Film.find(params[:id])
    @film.destroy

    respond_to do |format|
      format.html { redirect_to(films_url) }
      format.xml  { head :ok }
    end
  end
  
  def autocomplete_person_name
    term = params[:term]
    if term && !term.empty?
        items = Person.select("distinct name").
            where("LOWER(name) like ?", term.downcase + '%').
            limit(10).group(:name)
     else
       items = {}
     end
     render :json => json_for_autocomplete(items, :name)
  end
  
  def autocomplete_function_name
    term = params[:term]
    if term && !term.empty?
        items = Function.select("distinct name").
            where("LOWER(name) like ?", term.downcase + '%').
            limit(10).group(:name)
     else
       items = {}
     end
     render :json => json_for_autocomplete(items, :name)
  end
  
  def jointure
    params[:group] ||= "ville"
    @rea = Film.find(params[:id], :include => {:joints => [:salle, :ville, :film ]})
    @rea_joints = @rea.joints.find(:all).group_by {|j| j.send(params[:group])}
    
    @reab = Film.find(params[:id], :include => {:jointbs => [:salle, :ville ]})
    @rea_jointbs = @reab.jointbs.find(:all).group_by {|j| j.send(params[:group])}
    
    @reac = Film.find(params[:id], :include => {:jointcs => [:salle, :ville ]})
    @rea_jointcs = @reac.jointcs.find(:all).group_by {|j| j.send(params[:group])}
  end
  
  private
  
  def sort_column
    Film.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
  
  
end
