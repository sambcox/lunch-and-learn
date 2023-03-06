require 'rails_helper'

RSpec.describe 'Learning Resource' do
  describe 'existence' do
    it 'exists' do
      resource = LearningResource.new([{:alt_tag=>"bird's eye view photography of asphalt road in between pine trees",
        :url=>
         "https://images.unsplash.com/photo-1536420124982-bd9d18fc47ed?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwxfHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"northern light at night",
        :url=>
         "https://images.unsplash.com/photo-1528155124528-06c125d81e89?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwyfHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"aerial photography of street at night covered with snow",
        :url=>
         "https://images.unsplash.com/photo-1522885147691-06d859633fb8?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwzfHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"dogs pulling person on snow",
        :url=>
         "https://images.unsplash.com/photo-1495377701095-00261b767581?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw0fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"road covered with snow",
        :url=>
         "https://images.unsplash.com/photo-1518203441944-e9578e4b1635?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw1fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"white and black flags",
        :url=>
         "https://images.unsplash.com/photo-1512602047409-3be3640068a3?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw2fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTA
      wNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"green and yellow city tram",
        :url=>
         "https://images.unsplash.com/photo-1557261651-a6beab93541f?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw3fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA
      &ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"man jumping through body of water",
        :url=>
         "https://images.unsplash.com/photo-1483630127888-2327389638e7?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw4fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTA
      wNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"green and white bus",
        :url=>
         "https://images.unsplash.com/photo-1557261651-f893a96f357e?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw5fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA
      &ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"cars near buildings",
        :url=>
         "https://images.unsplash.com/photo-1570097658726-ed3c922a1bc9?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwxMHx8RmlubGFuZHxlbnwwfHx8fDE2NzgxMjE
      wMDQ&ixlib=rb-4.0.3&q=80"}], 'finland', {:title=>"A Super Quick History of Finland", :youtube_video_id=>"m0SykybyJbU"})

      expect(resource).to be_a(LearningResource)
    end

    it 'has attributes' do
      resource = LearningResource.new([{:alt_tag=>"bird's eye view photography of asphalt road in between pine trees",
        :url=>
         "https://images.unsplash.com/photo-1536420124982-bd9d18fc47ed?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwxfHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"northern light at night",
        :url=>
         "https://images.unsplash.com/photo-1528155124528-06c125d81e89?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwyfHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"aerial photography of street at night covered with snow",
        :url=>
         "https://images.unsplash.com/photo-1522885147691-06d859633fb8?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwzfHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"dogs pulling person on snow",
        :url=>
         "https://images.unsplash.com/photo-1495377701095-00261b767581?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw0fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"road covered with snow",
        :url=>
         "https://images.unsplash.com/photo-1518203441944-e9578e4b1635?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw1fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"white and black flags",
        :url=>
         "https://images.unsplash.com/photo-1512602047409-3be3640068a3?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw2fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTA
      wNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"green and yellow city tram",
        :url=>
         "https://images.unsplash.com/photo-1557261651-a6beab93541f?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw3fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA
      &ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"man jumping through body of water",
        :url=>
         "https://images.unsplash.com/photo-1483630127888-2327389638e7?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw4fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTA
      wNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"green and white bus",
        :url=>
         "https://images.unsplash.com/photo-1557261651-f893a96f357e?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw5fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA
      &ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"cars near buildings",
        :url=>
         "https://images.unsplash.com/photo-1570097658726-ed3c922a1bc9?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwxMHx8RmlubGFuZHxlbnwwfHx8fDE2NzgxMjE
      wMDQ&ixlib=rb-4.0.3&q=80"}], 'finland', {:title=>"A Super Quick History of Finland", :youtube_video_id=>"m0SykybyJbU"})

      expect(resource.video).to eq({:title=>"A Super Quick History of Finland", :youtube_video_id=>"m0SykybyJbU"})
      expect(resource.images).to eq([{:alt_tag=>"bird's eye view photography of asphalt road in between pine trees",
        :url=>
         "https://images.unsplash.com/photo-1536420124982-bd9d18fc47ed?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwxfHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"northern light at night",
        :url=>
         "https://images.unsplash.com/photo-1528155124528-06c125d81e89?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwyfHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"aerial photography of street at night covered with snow",
        :url=>
         "https://images.unsplash.com/photo-1522885147691-06d859633fb8?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwzfHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"dogs pulling person on snow",
        :url=>
         "https://images.unsplash.com/photo-1495377701095-00261b767581?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw0fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"road covered with snow",
        :url=>
         "https://images.unsplash.com/photo-1518203441944-e9578e4b1635?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw1fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"white and black flags",
        :url=>
         "https://images.unsplash.com/photo-1512602047409-3be3640068a3?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw2fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTA
      wNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"green and yellow city tram",
        :url=>
         "https://images.unsplash.com/photo-1557261651-a6beab93541f?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw3fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA
      &ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"man jumping through body of water",
        :url=>
         "https://images.unsplash.com/photo-1483630127888-2327389638e7?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw4fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTA
      wNA&ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"green and white bus",
        :url=>
         "https://images.unsplash.com/photo-1557261651-f893a96f357e?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHw5fHxGaW5sYW5kfGVufDB8fHx8MTY3ODEyMTAwNA
      &ixlib=rb-4.0.3&q=80"},
       {:alt_tag=>"cars near buildings",
        :url=>
         "https://images.unsplash.com/photo-1570097658726-ed3c922a1bc9?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw0MTgwMTh8MHwxfHNlYXJjaHwxMHx8RmlubGFuZHxlbnwwfHx8fDE2NzgxMjE
      wMDQ&ixlib=rb-4.0.3&q=80"}])
      expect(resource.country).to eq('finland')
    end
  end
end