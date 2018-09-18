class CommentController < ApplicationController
    def create
    p=Comment.new
    p.post_id = params[:num]
   p.comment_writer = params[:commentor]
   p.comment_content = params[:comment_content]
   p.comment_passowrd = params[:comment_password]
   p.save
   
   redirect_to "/read/#{p.post_id}"
    end    
    
    def delete
    Comment.find(params[:c_id]).destroy
    redirect_to "/read/#{params[:p_id]}"
    end

    def password_comment_action
     @post_password = Comment.find(params[:c_id])
        if(params[:input_password] == @post_password.comment_passowrd)
             redirect_to "/comment/delete/#{params[:c_id]}/#{params[:p_id]}"
        else
             flash[:warning] = '비밀번호가 틀렸습니다.'
             redirect_to "/read/#{params[:p_id]}"
        end
    end

end