class Admin::TestsController < Admin::BaseController
 	before_action :set_tests, only: %i[index update_inline]
	before_action :find_test, only: %i[show edit update destroy update_inline]
	
	rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_test_not_found

	def index
		@tests = Test.all
	end

	def show

	end

	def new
		@test = Test.new
	end

	def create
		@test = current_user.authored_tests.new(test_params)

	    if @test.save
	      redirect_to action: :index, notice: t('.success')
	    else
	      render :new
	    end
	end

	def edit
	
	end

	def update

		if @test.update(test_params)
			redirect_to admin_test_path @test
		else
			render :edit
		end
	end

	def destroy
		@test.destroy
		redirect_to admin_tests_path
	end

	  def update_inline
	    if @test.update(test_params)
	      redirect_to admin_tests_path
	    else
	      render :index
	    end
 	 end

	private

	def set_tests
	    @tests = Test.all
	end

	def find_test
		@test = Test.find(params[:id])
	end

	def test_params
		params.require(:test).permit(:title, :level, :category_id, :time)
	end


	def rescue_with_test_not_found
		render plain: 'Test was not found'
	end

end
