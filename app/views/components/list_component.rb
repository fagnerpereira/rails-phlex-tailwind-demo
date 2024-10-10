# frozen_string_literal: true

class ListComponent < ApplicationComponent
  include Phlex::Rails::Helpers::DOMClass

  def initialize(id:)
    @id = id
  end

  def view_template
    div id: @id, class: "min-w-full mt-4 flex flex-col gap-4" do
      yield
    end
  end
end
