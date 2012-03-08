class MenuRecipesController < ApplicationController
  # GET /menu_recipes
  # GET /menu_recipes.json
  def index
    @menu_recipes = MenuRecipe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @menu_recipes }
    end
  end

  # GET /menu_recipes/1
  # GET /menu_recipes/1.json
  def show
    @menu_recipe = MenuRecipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @menu_recipe }
    end
  end

  # GET /menu_recipes/new
  # GET /menu_recipes/new.json
  def new
    @menu = Menu.find(params[:menu_id])
    @menu_recipe = @menu.menu_recipes.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @menu_recipe }
    end
  end

  # GET /menu_recipes/1/edit
  def edit
    @menu_recipe = MenuRecipe.find(params[:id])
  end

  # POST /menu_recipes
  # POST /menu_recipes.json
  def create
    @menu = Menu.find(params[:menu_id])
    @menu_recipe = @menu.menu_recipes.build(params[:menu_recipe])

    respond_to do |format|
      if @menu_recipe.save
        format.html { redirect_to @menu, notice: 'Menu recipe was successfully created.' }
        format.json { render json: @menu_recipe, status: :created, location: @menu_recipe }
      else
        format.html { render action: "new" }
        format.json { render json: @menu_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /menu_recipes/1
  # PUT /menu_recipes/1.json
  def update
    @menu_recipe = MenuRecipe.find(params[:id])

    respond_to do |format|
      if @menu_recipe.update_attributes(params[:menu_recipe])
        format.html { redirect_to @menu_recipe, notice: 'Menu recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @menu_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_recipes/1
  # DELETE /menu_recipes/1.json
  def destroy
    @menu_recipe = MenuRecipe.find(params[:id])
    @menu_recipe.destroy

    respond_to do |format|
      format.html { redirect_to menu_recipes_url }
      format.json { head :no_content }
    end
  end
end
