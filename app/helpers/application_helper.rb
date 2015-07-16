# module ApplicationHelper
#   def sortable(column, title = nil)
#     title ||= column.titleize
#     direction = (column == params[:sort] && params[:direction] == 'asc') ? 'desc' : 'asc'
#     link_to title, :sort => column, :direction => direction
#   end
# end

module ApplicationHelper
  def sortable(column)
    title = column.titleize

    if params[:direction] == 'asc'
      direction = 'desc'
    else
      direction = 'asc'
    end

    link_to title, users_path(:column => column, :direction => direction)
  end
end
