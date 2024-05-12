class Admin::BadgesController < Admin::BaseController
	before_action :set_badges, only: %i[index]
	before_action :find_badge, only: %i[show edit update destroy]
	
	def index
	end

	def new
		@badge = Badge.new
	end

	def create
		@badge = Badge.new(badge_params)

	    if @badge.save
	      redirect_to action: :index
	    else
	      render :new
	    end
	end

	def show

	end

	def edit

	end

	def update

		if @badge.update(badge_params)
			redirect_to admin_badge_path @badge
		else
			render :edit
		end
	end

	def destroy
		@badge.destroy
		redirect_to admin_badges_path
	end

	private

	def badge_params
		params.require(:badge).permit(:title, :img, :rule)
	end

	def set_badges
	    @badges = Badge.all
	end

	def find_badge
		@badge = Badge.find(params[:id])
	end
end