class ContentsController < ApplicationController
  def index
  end

  def create
    @content = Content.new(content_params)
    @content.member = current_member
    @content.accepted = false
    if @content.save
      flash[:success] = 'Successfully uploaded.'
    else
      flash[:danger] = 'An error occured.'
    end
    redirect_to upload_path
  end

  def new
    @content = Content.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def moderate
    @contents = Content.where(:accepted => false)
  end

  def accept
    @content = Content.find(params[:id])
    @content.update(accepted: true)
    flash[:success] = 'Content accepted.'
    redirect_to moderate_path
  end

  def deny
  end

  def vote
    @contents = Content.where(:accepted => true)
  end

  private
  def content_params
    params.require(:content).permit(:url, :media_type)
  end
end
