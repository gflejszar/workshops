class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    "#{ model.user.firstname } #{ model.user.lastname }".strip
  end

end
