require 'fileutils'

Dir.glob(File.join(__dir__, '/../dotfiles/*')).each do |f|
  next if File.basename(f) == 'brew.sh'
  unless File.exist?(File.join(ENV['HOME'], "/.#{File.basename(f)}"))
    FileUtils.ln_s(f, File.join(ENV['HOME'], "/.#{File.basename(f)}"))
    #puts [f, File.join(ENV['HOME'], "/.#{File.basename(f)}")]
  end
end
