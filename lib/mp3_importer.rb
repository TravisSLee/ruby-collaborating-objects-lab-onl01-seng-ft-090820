class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
<<<<<<< HEAD
    Dir[@path+"/*.mp3"].map { |file| file.split("/").last }
=======
    @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
>>>>>>> 4978db4d1997df3a90b53f74dbc50c42c0db2047
  end

  def import
    files.each {|song| Song.new_by_filename(song)}
  end
end