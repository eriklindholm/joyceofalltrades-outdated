class Play < ApplicationRecord

  mount_uploader :teaser_image, PlayTeaserImageUploader
  mount_uploader :main_image, PlayImageUploader

end
