# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
PLAYERS = (game_hash[:home][:players]) + (game_hash[:away][:players])

def num_points_scored name
  player_name = PLAYERS.find {|player| player[:player_name] == name}
  player_name[:points]
end

def shoe_size name
  player_name = PLAYERS.find {|player| player[:player_name] == name}
  player_name[:shoe]
end

def team_colors team_input
  # game_hash[:home][:team_name] == team_input ? game_hash[:home][:colors] : game_hash[:away][:colors]
  # is this logic true ? if it is execute this : if its not execute this instead 
  # Brooklyn Nets == input ? 
  selected_team = game_hash.values.find {|name| name[:team_name] == team_input}
  selected_team[:colors]
end

def team_names 
  newArr = []
  game_hash.values.each {|name| newArr << name[:team_name] }
  newArr
end

def player_numbers team_input
  selected_team = game_hash.values.find {|name| name[:team_name] == team_input}
  selected_team[:players].map {|player_hash| player_hash[:number]}
end 

def player_stats name 
  PLAYERS.find {|player| player[:player_name] == name}
end

def big_shoe_rebounds 
  sorted_players = PLAYERS.sort_by {|player_hash| player_hash[:shoe]}
  sorted_players[sorted_players.length-1][:rebounds]
end
big_shoe_rebounds