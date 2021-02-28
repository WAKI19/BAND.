class Performance < ApplicationRecord
    mount_uploader :video, PerformanceVideoUploader

    def contributor
        user = User.find_by(id: self.user_id)
        return user
    end
end
