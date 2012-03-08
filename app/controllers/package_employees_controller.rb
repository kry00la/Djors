class PackageEmployeesController < ApplicationController
  # GET /package_employees
  # GET /package_employees.json
  def index
    @package_employees = PackageEmployee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @package_employees }
    end
  end

  # GET /package_employees/1
  # GET /package_employees/1.json
  def show
    @package_employee = PackageEmployee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @package_employee }
    end
  end

  # GET /package_employees/new
  # GET /package_employees/new.json
  def new
    @package = Package.find(params[:package_id])
    @package_employee = @package.package_employees.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @package_employee }
    end
  end

  # GET /package_employees/1/edit
  def edit
    @package_employee = PackageEmployee.find(params[:id])
  end

  # POST /package_employees
  # POST /package_employees.json
  def create
    @package = Package.find(params[:package_id])
    @package_employee = @package.package_employees.build(params[:package_employee])
    respond_to do |format|
      if @package_employee.save
        format.html { redirect_to @package, notice: 'Package employee was successfully created.' }
        format.json { render json: @package_employee, status: :created, location: @package_employee }
      else
        format.html { render action: "new" }
        format.json { render json: @package_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /package_employees/1
  # PUT /package_employees/1.json
  def update
    @package_employee = PackageEmployee.find(params[:id])

    respond_to do |format|
      if @package_employee.update_attributes(params[:package_employee])
        format.html { redirect_to @package_employee, notice: 'Package employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @package_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /package_employees/1
  # DELETE /package_employees/1.json
  def destroy
    @package_employee = PackageEmployee.find(params[:id])
    @package_employee.destroy

    respond_to do |format|
      format.html { redirect_to package_employees_url }
      format.json { head :no_content }
    end
  end
end
