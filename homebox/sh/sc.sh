#!/usr/bin/ruby
require "pathname"
require"fileutils"

#Important paths
source_path = "/home/russell/starcraft"
user_path = ENV["HOME"] + "/.starcraft/"
character_path = user_path + "/characters/"
error_path = user_path + "/Errors/"
source_map_path = source_path + "/maps/"
target_map_path = user_path + "/maps/"
replays_path = target_map_path + "/replays/"
starcraft_exe = source_path+"/StarCraft.exe"
starcraft_dir = Pathname.new(source_path)

#Ensure user starcraft dir exists
if !File.exist? user_path
  FileUtils.mkdir(user_path)
end

#Files/Directories to exclude from copying.
excluded = ["characters","maps","Errors"]

#Symlink the contents of the root of the starcraft dir except for the excluded files.
starcraft_dir.children.each do
  |file|
  if !excluded.include? file.basename.to_s
    if !File.exist? user_path+file.basename.to_s
      FileUtils.ln_s(file.to_s,user_path+file.basename.to_s)
    end
  else
    #puts "Bad! "+file
  end
end

#Ensure the character and map directories exist.
if !File.exist? character_path
  FileUtils.mkdir(character_path)
end

if !File.exist? target_map_path
  FileUtils.mkdir(target_map_path)
end

if !File.exist? error_path
  FileUtils.mkdir(error_path)
end

source_map_dir = Pathname.new(source_map_path)

#Files/Directories to exclude from copying.
excluded = ["replays"]

#Symlink the contents of the root of the starcraft dir except for the excluded files.
source_map_dir.children.each do
  |file|
  if !excluded.include? file.basename.to_s
    if !File.exist? target_map_path+file.basename.to_s
      FileUtils.ln_s(file.to_s,target_map_path+file.basename.to_s)
    end
  else
    #puts "Bad! "+file
  end
end

#Ensure the replay directory exists.
if !File.exist? replays_path
  FileUtils.mkdir(replays_path)
end

#Try and run StarCraft.exe
Kernel.exec("wine #{starcraft_exe}")
