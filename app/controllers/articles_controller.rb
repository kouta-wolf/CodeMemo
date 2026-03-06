class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]


  def index
    @articles = Article.all
    @article = Article.new
  end

  def show
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path, notice: "記事を保存しました"
    else
      @articles = Article.all
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path, notice: "記事を削除しました", status: :see_other
  end

  def new
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :category_id, :content, :image)
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def post_params
    params.permit(:image, :content)
  end

end
