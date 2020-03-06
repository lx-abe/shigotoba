# frozen_string_literal: true

# 施設閲覧（ユーザー向け）
class WorkshopsController < ApplicationController
  def index
    @workshops = Workshop.all
  end

  def show
    @workshop = Workshop.find(params[:id])
  end
end
