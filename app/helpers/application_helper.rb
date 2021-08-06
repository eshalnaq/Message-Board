module ApplicationHelper
    include Pagy::Frontend

    def displayname(user)
        if user.nil?
            return "Mysterious Kiddo"
        elsif user.displayname.blank?
            return user.username
        else
            return user.displayname
        end
    end

end
