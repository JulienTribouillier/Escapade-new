# frozen_string_literal: true

class HomepageController < ApplicationController

  def index
    @posts = Post.where(status: 'validated').order(:created_at)
  end
end
