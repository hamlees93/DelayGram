class AvatarsController < ApplicationController
    def edit
        @avatar = current_user.avatar
        @avatar ||= Avatar.new
    end

    def update
        byebug()
    end
end