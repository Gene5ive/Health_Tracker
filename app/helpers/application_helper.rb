# module ApplicationHelper
#   def sortable(column, title = nil)
#     title ||= column.titleize
#     direction = (column == params[:sort] && params[:direction] == 'asc') ? 'desc' : 'asc'
#     link_to title, :sort => column, :direction => direction
#   end
# end

module ApplicationHelper
  def sortable_food(food_column)
    title = food_column.titleize

    if params[:food_direction] == 'asc'
      food_direction = 'desc'
    else
      food_direction = 'asc'
    end

    link_to title, users_path(:food_column => food_column, :food_direction => food_direction)
  end
  def sortable_exercise(exercise_column)
    title = exercise_column.titleize

    if params[:exercise_direction] == 'asc'
      exercise_direction = 'desc'
    else
      exercise_direction = 'asc'
    end

    link_to title, users_path(:exercise_column => exercise_column, :exercise_direction => exercise_direction)
  end
end
