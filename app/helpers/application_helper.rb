module ApplicationHelper
  def to_date(date)
    date.strftime("%B %e, %Y")
  end
end
