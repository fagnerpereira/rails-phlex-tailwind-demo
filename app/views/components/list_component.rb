# frozen_string_literal: true

class ListComponent < ApplicationComponent
  include Phlex::Rails::Helpers::DOMClass
  include Phlex::Rails::Helpers::Request
  include Pagy::Frontend

  def initialize(id:, pagy: nil)
    @id = id
    @pagy = pagy
  end

  def view_template
    div id: @id, class: "min-w-full mt-4 flex flex-col gap-4" do
      yield

      div do
        pagy_nav(@pagy, id: 'nav', aria_label: 'Pages nav').html_safe
      end
    end
  end
end
