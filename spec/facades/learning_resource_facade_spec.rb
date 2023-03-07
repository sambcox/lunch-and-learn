require 'rails_helper'

RSpec.describe 'Learning Resource Facade' do
  describe 'Learning Resource information', :vcr do
    it 'returns a youtube video' do
      video = LearningResourceFacade.parsed_video('finland')

      expect(video).to eq({ title: 'A Super Quick History of Finland', youtube_video_id: 'm0SykybyJbU' })
    end

    it 'returns an array of images' do
      images = LearningResourceFacade.parsed_images('finland')

      expect(images).to be_a(Array)
      expect(images.first[:alt_tag]).to be_a(String)
      expect(images.first[:url]).to be_a(String)
    end

    it 'returns an array of learning resources' do
      resource = LearningResourceFacade.find_resources('finland')

      expect(resource).to be_a(LearningResource)
      expect(resource.images).to be_a(Array)
      expect(resource.images.first[:alt_tag]).to be_a(String)
      expect(resource.images.first[:url]).to be_a(String)
      expect(resource.video[:title]).to be_a(String)
      expect(resource.video[:youtube_video_id]).to be_a(String)
      expect(resource.country).to eq('finland')
    end
  end
end
