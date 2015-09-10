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
  end

  def deny
  end

  def vote
  end

  private
  def content_params
    params.require(:content).permit(:url, :media_type)
  end
end
