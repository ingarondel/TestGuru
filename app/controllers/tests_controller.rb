class TestsController < ApplicationController

	#skip_before_action :find_test, only: :show
	before_action :find_test, only: %i[show]
	after_action :send_log_message
	around_action :log_execute_time

	rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_test_not_found

	def index
		result = ["Class: #{params.class}", "Parametrs: #{params.inspect}"]

		render plain: result.join("\n")
	end

	def show
		render inline: '<%= @test.title %>'

		@test = Test.find(params[:id])
	    @questions = @test.questions
	end

	def new
	
	end

	private

	def find_test
		@test = Test.find(params[:id])
	end

	def send_log_message
		logger.info("Action [#{action_name}] was finished")
	end

	def log_execute_time
		start = Time.now
		yield
		finish = Time.now - start

		logger.info("Execution time: #{finish * 1000}ms")
	end

	def rescue_with_test_not_found
		render plain: 'Test was not found'
	end

end
