class Admin::QuestionsController < Admin::BaseController

	before_action :find_test, only: %i[new create index]
	before_action :find_question, only: %i[show edit update destroy]

	rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

	def index
		@questions = @test.questions
	end

	def show
	end

	def new
		@question = Question.new
	end

	def create
		@question = @test.questions.new(question_params)

		if @question.save
			redirect_to admin_question_path(@question)
		else
			render :new
		end
	end

	def edit
	
	end

	def update
			if @question.update(question_params)
			redirect_to admin_question_path(@question)
		else
			render :edit
		end
	end

	def destroy
		@test = @question.test
		@question.destroy

		if @question.destroy
	      redirect_to admin_test_path @test
	  	else
	      render :index
	  end
	end

	private

	def question_params
  		params.require(:question).permit(:body)
	end

	def find_test
    	@test = Test.find(params[:test_id])
 	 end

    def find_question
	   	@question = Question.find(params[:id])
	end

	def rescue_with_question_not_found
		render plain: 'Question was not found'
	end

end
