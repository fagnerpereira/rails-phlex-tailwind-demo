# frozen_string_literal: true

class CardComponent < ApplicationComponent
  def view_template
    div class: "border shadow-lg rounded-lg p-5 items-center" do
      yield
    end
  end
end
