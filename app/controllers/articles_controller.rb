class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end
  
  def index
    @articles = Article.all 
  end 

  def new
    @article = Article.new
  end

  def edit
   
    @article = Article.find(params[:id])
  end

 


  def create
    @article = Article.new(params.require(:article).permit(:title, :description, :body))
    @article.save
    if @article.save
    flash[:notice] = "Article was created successfully!"
    redirect_to @article and return
  else
    render 'new' and return
  end
 end

  def update

    @article = Article.find(params[:id])
 if @article.update(params.require(:article).permit(:title, :description, :body))
  flash[:notice] = "Article was update successfully!"
  redirect_to @article  and return
else
  render 'edit' and return

  end
 end
end


