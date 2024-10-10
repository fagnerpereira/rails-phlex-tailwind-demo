class NoticeComponent < ApplicationComponent
  attr_accessor :notice

  def initialize(notice:)
    @notice = notice
  end

  def view_template
    if notice.present?
      p(
        class:
          "py-2 px-3 bg-green-50 mb-5 text-green-500 font-medium rounded-lg w-full",
        id: "notice"
      ) do
        plain notice
      end
    end
  end
end
