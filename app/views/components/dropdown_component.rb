# frozen_string_literal: true

class DropdownComponent < ApplicationComponent
  def view_template
    div(class: "relative", data_controller: "dropdown") do
      yield
    end
  end

  def trigger
    button(class: "hover:bg-slate-100 px-2 rounded-lg", data_action: "dropdown#toggle") do
      yield
    end
  end

  def content
    div(
      class: "hidden absolute z-10 bg-white flex flex-col gap-2 border shadow-lg rounded-lg p-3 text-slate-500 font-medium",
      data_dropdown_target: "content") do
      yield
    end
  end
end
