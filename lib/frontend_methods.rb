require 'catpix'
require 'pry'

def all_logo(logo)
    Catpix::print_image "/Users/pasbynumbers/Personals/Flatlearn/WorkFolder/WebDevCourse_v2/Mod1_v2/IceHockeyProject/logos_icehockey/#{logo}.gif",
    :limit_x => 0.7,
    :limit_y => 0.7,
    :center_x => true,
    :center_y => true,
    :resolution => "high"
    end

    binding.pry
    0