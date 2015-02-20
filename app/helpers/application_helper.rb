module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Whyleave"
    end
  end
end
