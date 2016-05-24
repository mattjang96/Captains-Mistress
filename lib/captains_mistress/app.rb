require 'captains_mistress'

module CaptainsMistress
  # The application object. Create it with options for the game, then run by
  # calling #run.
  class App
    attr_reader :verbose

    def initialize(options = {})
      @verbose = options.fetch(:verbose, false)
    end

    def run
      # You should implement this method.
      raise 'Not implemented'
    end
  end
end
