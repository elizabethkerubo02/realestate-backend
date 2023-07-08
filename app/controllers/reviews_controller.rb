class ReviewsController < ApplicationController
    
    #GET
    def index
    reviews = Review.all
    render json: reviews
    end
    
        #GET/reviews/:id
        def show
          review = Review.find(params[:id])
          if review
            render json: review
          else 
            render json: { error: "Review not found" }, status: :not_found
        end
    end
    
        #POST/reviews
           def create 
           review = Review.create!(review_params)
           render json: review, status: :created
           end
    
           #Update/revoiews                          
       def update
           review = Review.find_by(id: params[:id])
           if review
           review.update!(review_params)
           render json: review
           else
           render json: {error: "Review not found"}, status: :not_found
           end
       end
    
       #DELETE /reviews/:id
    def destroy
      review = Review.find_by(id: params[:id])
      if review
        review.destroy
        # head :no_content
        render json: {}
      else
        render json: { error: "Review not found" }, status: :not_found
      end
    end
    
    
    private
      def review_params
        params.permit(:user_id, :house_id, :review)
      end
    
    end   
    