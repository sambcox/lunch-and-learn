class LearningResource
  attr_reader :id, :country, :images, :video

  def initialize(images, country, video)
    @id = nil
    @country = country
    @images = images
    @video = video
  end
end
