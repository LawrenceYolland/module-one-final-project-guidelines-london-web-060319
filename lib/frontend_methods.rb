require 'catpix'
require 'pry'

# loading animation
def load_screen
    spinner = TTY::Spinner.new("[:spinner] Simulating your match ...", format: :pulse_2)
     spinner.auto_spin    
    sleep(4)   
    spinner.stop('Done!') 
end

# logo inputter
def all_logo(logo)
    Catpix::print_image "/Users/pasbynumbers/Personals/Flatlearn/WorkFolder/WebDevCourse_v2/Mod1_v2/IceHockeyProject/logos_icehockey/#{logo}.gif",
    :limit_x => 0.7,
    :limit_y => 0.7,
    :center_x => true,
    :center_y => true,
    :resolution => "high"
    end

    # minimum 4x selection for teams
    def atlantic_pick_teams(playoff_teams)
        prompt = TTY::Prompt.new
        playoff_atl = []
        playoff_atl << prompt.multi_select("Select 4 Teams from Atlantic Division:", get_division_teams(1), max:4, per_page: 10)
        if playoff_atl.flatten.count != 4
          playoff_atl.clear
          atlantic_pick_teams(playoff_teams)
        else
        playoff_teams << playoff_atl
        end
      end
   
      def metropolitan_pick_teams(playoff_teams)
        prompt = TTY::Prompt.new
        playoff_met = []
        playoff_met << prompt.multi_select("Select 4 Teams from Metropolitan Division:", get_division_teams(2), max:4, per_page: 10)
        if playoff_met.flatten.count != 4
          playoff_met.clear
          metropolitan_pick_teams(playoff_teams)
        else
        playoff_teams << playoff_met
        end
      end
   
      def pacific_pick_teams(playoff_teams)
        prompt = TTY::Prompt.new
        playoff_pac = []
        playoff_pac << prompt.multi_select("Select 4 Teams from Pacific Divsion:", get_division_teams(3), max:4, per_page: 10)
        if playoff_pac.flatten.count != 4
          playoff_pac.clear
          pacific_pick_teams(playoff_teams)
        else
        playoff_teams << playoff_pac
        end
      end
   
      def central_pick_teams(playoff_teams)
        prompt = TTY::Prompt.new
        playoff_cen = []
         playoff_cen << prompt.multi_select("Select 4 Teams from Central Divsion:", get_division_teams(4), max:4, per_page: 10)
          if playoff_cen.flatten.count != 4
            playoff_cen.clear
            central_pick_teams(playoff_teams)
          else
          playoff_teams << playoff_cen
          end
      end
   
      def pick_teams
        playoff_teams = []
        atlantic_pick_teams(playoff_teams)
        metropolitan_pick_teams(playoff_teams)
        pacific_pick_teams(playoff_teams)
        central_pick_teams(playoff_teams)
        end

    binding.pry
    0