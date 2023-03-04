class LearningResourceFacade
  def find_resources(country)
    video = VideoService.find_by_country(country)
    images = ImageService.find_by_country(country)
    
  end
end