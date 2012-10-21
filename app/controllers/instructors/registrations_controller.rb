class Instructors::RegistrationsController < Devise::RegistrationsController

	def create_photo
	  @instructor = Instructor.find(params[:id]) 	
	  respond_to do |format|
		if @instructor.update_without_password(params[:instructor])
		  format.html { redirect_to @instructor, notice: 'Photo was successfully created.' }
		  format.json { render :json => {:url => @instructor.photo.thumb.url}}
		else
		  format.html { render action: "new" }
		  format.json { render json: @instructor.errors, status: :unprocessable_entity }
		end
	  end
	end
  
end