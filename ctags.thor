class Ctags < Thor
  desc "ruby", "make TAGS file for ruby files"
  def ruby
    ruby_files = Dir.glob("**/*.rb").reject {|f| f.match("pkg")}.join(' ')
    `xctags -e #{ruby_files}`
  end
end
