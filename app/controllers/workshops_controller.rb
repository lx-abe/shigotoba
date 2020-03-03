# 施設の登録・管理
class WorkshopsController < ApplicationController
  def index
    @workshops = Workshop.all
  end
end
