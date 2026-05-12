require 'fileutils'

class ConfigBackup
  def initialize(config_file)
    @config_file = config_file
  end

  def copy_files
    FileUtils.mkdir_p('../home_files')

    File.foreach('dotfiles.txt') do |file|
      file = file.strip
      next if file.empty?

      expanded_file = File.expand_path(file)

      FileUtils.cp(expanded_file, '../home_files') if File.file?(expanded_file)
      FileUtils.cp_r(expanded_file, '../home_files') if File.directory?(expanded_file)
    end
  end
end

def main
  cfg = ConfigBackup.new('dotfiles.txt')
  cfg.copy_files
end

main
