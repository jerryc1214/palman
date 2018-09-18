class BookController < ApplicationController
  def main
  end

  def publisher
  end
 
  def community
    @posts = Post.order("created_at DESC").page params[:page]
  end
  
  def notice
    @notices = Notice.order("created_at DESC").page params[:page]
  end

  def write
      
  end
  
  def delete
    delete_post = Post.find(params[:num])
    delete_post.destroy
    
    redirect_to '/book/community'
  end
  
   def notice_delete
    delete_post = Notice.find(params[:num])
    delete_post.destroy
    
    redirect_to '/book/notice'
  end

  def read
    @find_post = Post.find(params[:num])
    @comments = Post.where(post_id: @find_post.id) #Comment. where(post_id: params[:num])
  end
  
  def password_action
     @post_password = Post.find(params[:num])
     if(params[:input_password] == @post_password.password)
         redirect_to "/delete/#{@post_password.id}"
     else
         flash[:warning] = '비밀번호가 틀렸습니다.'
         redirect_to "/read/#{@post_password.id}"
     end
  end
  
  def password_notice_action
     @post_password = Notice.find(params[:num])
     if(params[:input_password] == "admin1234")
         redirect_to "/notice_delete/#{@post_password.id}"
     else
         flash[:warning] = '비밀번호가 틀렸습니다.'
         redirect_to "/notice_read/#{@post_password.id}"
     end
  end
  
  def password_update_action
     @post_password = Post.find(params[:num])
     if(params[:input_password] == @post_password.password)
         redirect_to "/update/#{@post_password.id}"
     else
         flash[:warning] = '비밀번호가 틀렸습니다.'
         redirect_to "/read/#{@post_password.id}"
     end
  end
  
  def password_noticeupdate_action
     @post_password = Notice.find(params[:num])
     if(params[:input_password] == "admin1234")
         redirect_to "/notice_update/#{@post_password.id}"
     else
         redirect_to "/notice_read/#{@post_password.id}"
         flash.now[:alert] = '관리자가 아닙니다.'
     end
  end
  
  def notice_action
     if(params[:input_password] == "admin1234")
         redirect_to '/notice_write'
     else
         redirect_to '/book/notice'
         flash.now[:alert] = '관리자가 아닙니다.'
     end
  end
  
  def notice_update_action
     if(params[:input_password] == "admin1234")
         redirect_to '/notice_update'
     else
         redirect_to '/book/notice'
         flash.now[:alert] = '관리자가 아닙니다.'
     end
  end
  
  def search_result
    @search_minum = Minum.where("book_title LIKE :temp", {:temp => "%#{params[:search_title]}%"})
    @search_eulyoo = Eulyoo.where("book_title LIKE :temp", {:temp => "%#{params[:search_title]}%"})
    @search_munhak = Munhak.where("book_title LIKE :temp", {:temp => "%#{params[:search_title]}%"})
    @search_openbooks = Openbook.where("book_title LIKE :temp", {:temp => "%#{params[:search_title]}%"})
    @search_penguin = Penguin.where("book_title LIKE :temp", {:temp => "%#{params[:search_title]}%"})
  end
  
   def notice_read
    @find_post = Notice.find(params[:num])
  end
  
  def write_action
   p = Post.new
   p.title = params[:subject]
   p.writer = params[:author]
   p.content = params[:object]
   p.password = params[:password]
   p.save
   
   redirect_to '/book/community' #커뮤니티 페이지로 돌아감
  end
  
  def notice_write_action
   p = Notice.new
   p.title = params[:subject]
   p.content = params[:object]
   p.save
   
   redirect_to '/book/notice' #커뮤니티 페이지로 돌아감
  end
  

  def update
     @update_post = Post.find(params[:num])
  end
  
  def notice_update
     @update_post = Notice.find(params[:num])
  end
  
  def update_action
   @update_post = Post.find(params[:num])
   p = Post.find(params[:num])
   p.title = params[:title]
   p.writer = params[:writer]
   p.content = params[:content]
   p.password = params[:password]
   p.save
   
   redirect_to '/book/community' #main으로 돌아가기?
  end
  
  def notice_update_action
    @update_post = Notice.find(params[:num])
   p = Notice.find(params[:num])
   p.title = params[:title]
   p.content = params[:content]
   p.save
   
   redirect_to '/book/notice' #main으로 돌아가기?
  end
  
  def minum
    @minum = Minum.all
  end
  
  def munhak
    @munhak = Munhak.all
  end
  
  def openbooks
    @openbooks = Openbook.all
  end
  
  def eulyoo
      @eulyoo = Eulyoo.all
  end
  
  def penguin
      @penguin = Penguin.all
  end
  
  
end

  
  
