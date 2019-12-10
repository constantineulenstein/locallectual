class BackgroundImageJob < ApplicationJob
  queue_as :default

  def perform(user)
    unless user.base_location.nil?
      location = user.base_location.split(",")[0].downcase
      url = open("https://api.unsplash.com/search/photos?page=1&query=#{location}&per_page=1&client_id=#{ENV['UNSPLASH_URL']}").read
      results = JSON.parse(url)
      # resultant image from unsplash api
      if results['results'] == []
        api_image = "https://images.unsplash.com/photo-1494548162494-384bba4ab999?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80"

        uploaded = Cloudinary::Uploader.upload(api_image)
        user.update!(city_image: uploaded["url"])

        # uploads image from api to cloudinary and grabs url
      else
        api_image = results['results'][0]['urls']['regular']
        # passes photo obtained from api to view as long as there is a result to pass

        uploaded = Cloudinary::Uploader.upload(api_image)
        user.update!(city_image: uploaded["url"])
        # uploads image from api to cloudinary and grabs url
      end
    end
  end
end
