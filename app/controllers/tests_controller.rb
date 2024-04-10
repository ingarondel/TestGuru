class TestsController < ApplicationController
	def index
		#render html: '<h1>All Tests<h1>'.html_safe

		#render json: { tests: Test.all }

		#render inline: '<p>My favourite language is: <%= %[ybuR].reverse! %>!</p>'

		#render file: 'public/about.html', layout: false

		#head 204

		#head :no_content

		#byebug

		#render inline: '<%= console%>'

		#logger.info(self.object_id)

		respond_to do |format|
			format.html {render plain: 'All tests'}
			format.json {render json: { tests: Test.all}}
		end
	end

	def show
		#render plain: 'Show tests'

		redirect_to root_path
	end

end
