class LearningResourceFacade
  def self.find_resources(country)
    video = parsed_video(country)
    images = parsed_images(country)
    LearningResource.new(images, country, video)
  end

  def self.parsed_video(country)
    video = {}
    raw_video = VideoService.find_by_country(country)[:items].first
    video[:title] = raw_video[:snippet][:title]
    video[:youtube_video_id] = raw_video[:id][:videoId]
    video
  end

  def self.parsed_images(country)
    raw_images = ImageService.find_by_country(country)[:results]
    raw_images.map do |raw_image|
      image = {}
      image[:alt_tag] = raw_image[:alt_description]
      image[:url] = raw_image[:urls][:full]
      image
    end
  end
end
