module ApplicationHelper
	def error_tag(model, attribute)
		if model.errors.has_key? attribute
			content_tag(
				:div,
				model.errors[attribute].first,
				class: 'error_message'
			)
		end		
	end

  def br_date_format(model, attribute)
    model[attribute].strftime("%d-%m-%Y") unless model[attribute] == nil
  end
end
