# frozen_string_literal: true

class HeaderComponent < ApplicationComponent
  def initialize(title:)
    @title = title
  end

  def view_template
    div(class: "flex justify-between items-center") do
      render_title
      yield
    end
  end

  private

  def render_title
    h1(class: "font-bold text-4xl text-blue-500") { @title }
  end
end
