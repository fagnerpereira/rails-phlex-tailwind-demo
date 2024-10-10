# frozen_string_literal: true

class List::ItemComponent < ApplicationComponent
  include Phlex::Rails::Helpers::DOMID

  def initialize(item:)
    @item = item
  end

  def view_template
    div id: dom_id(@item), class: "flex justify-between w-full border shadow-lg rounded-lg p-5 items-center" do
      yield
    end
  end

  def title
    div class: "font-medium text-xl text-slate-500" do
      yield
    end
  end

  def actions
    div class: "flex flex-col gap-2" do
      yield
    end
  end
end
