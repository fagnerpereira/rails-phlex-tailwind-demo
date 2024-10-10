# frozen_string_literal: true

class ButtonComponent < ApplicationComponent
  def initialize(text:)
    @text = text
  end

  def view_template
    button class: "rounded-lg py-3 px-5 bg-blue-600 text-white block font-medium" do
      @text
    end
  end
end
