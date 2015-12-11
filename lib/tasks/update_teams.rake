namespace :update_teams do
  desc "Adds image_url to teams"
  task add_images: :environment do
    image_url_hash = {
      "Chelsea" => "https://hdlogo.files.wordpress.com/2013/11/chelsea.png",
      "Liverpool" => "https://hdlogo.files.wordpress.com/2013/11/liverpool.png",
      "Crystal Palace" => "https://hdlogo.files.wordpress.com/2013/11/crystal-palace-fc.png",
      "Man Utd" => "https://hdlogo.files.wordpress.com/2013/11/manchester-united.png",
      "Man City" => "https://hdlogo.files.wordpress.com/2013/11/manchester-city.png",
      "Norwich" => "https://hdlogo.files.wordpress.com/2011/08/norwich-city.png",
      "Newcastle" => "https://hdlogo.files.wordpress.com/2013/11/newcastle-united.png",
      "Stoke" => "https://hdlogo.files.wordpress.com/2013/11/stoke-city.png",
      "Swansea" => "https://hdlogo.files.wordpress.com/2013/11/swansea-city-afc.png",
      "Arsenal" => "https://hdlogo.files.wordpress.com/2013/11/arsenal.png",
      "Watford" => "https://hdlogo.files.wordpress.com/2011/08/watford-fc.png",
      "West Ham" => "https://hdlogo.files.wordpress.com/2013/11/west-ham.png",
      "West Brom" => "https://hdlogo.files.wordpress.com/2013/11/west-bromwich-albion-hd-logo.png",
      "Leicester" => "https://hdlogo.files.wordpress.com/2013/11/leicester-city-fc-hd-logo.png",
      "Everton" => "https://hdlogo.files.wordpress.com/2013/11/everton-fc-logo1.png",
      "Sunderland" => "https://hdlogo.files.wordpress.com/2013/11/sunderland.png",
      "Southampton" => "https://hdlogo.files.wordpress.com/2013/11/southampton-fc.png",
      "Bournemouth" => "https://hdlogo.files.wordpress.com/2013/11/tottenham-hotspur.png",
      "Spurs" => "https://hdlogo.files.wordpress.com/2013/11/tottenham-hotspur.png",
      "Aston Villa" => "https://hdlogo.files.wordpress.com/2013/11/aston-villa.png"
    }

    image_url_hash.each do |team_name, image_url|
      Team.where(name: team_name).first.update_attribute(:image_url, image_url)
    end

  end
end
