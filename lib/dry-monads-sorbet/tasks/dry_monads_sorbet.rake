require 'dry-monads-sorbet'
require 'pathname'

DRY_MONADS_SORBET_RAKE_DIR  = File.dirname(__FILE__)

namespace :dry_monads_sorbet do
  desc "Generate rbis for dry/monads"
  task :update_rbi do
    FileUtils.rm_rf(dry_monads_sorbet_rbi_path)

    dry_monads_sorbet_copy_bundled_rbi('dry-monads.rbi')
  end

  def dry_monads_sorbet_rbi_path
    Pathname.new(Rake.original_dir).join('sorbet', 'dry-monads-sorbet')
  end

  def dry_monads_sorbet_copy_bundled_rbi(filename)
    bundled_rbi_file_path = File.join(DRY_MONADS_SORBET_RAKE_DIR, '..', '..', 'bundled_rbi', filename)
    copy_to_path = dry_monads_sorbet_rbi_path.join(filename)
    FileUtils.mkdir_p(File.dirname(copy_to_path))
    FileUtils.cp(bundled_rbi_file_path, copy_to_path)
    puts "Copied bundled rbi file: #{filename}"
  end
end
