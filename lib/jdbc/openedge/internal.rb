module Jdbc
  module OpenEdge
    module Internal
      JARS = [ 'openedge.jar' ]
    end
  end
end

if RUBY_PLATFORM =~ /java/
  Jdbc::OpenEdge::Internal::JARS.each do |j|
    begin
      require j
    rescue LoadError
      raise LoadError, <<-HERE.gsub!(/\s\s/, '')
        Unable to load #{j}. Make sure that you've
        put the driver .jars in your Java $CLASSPATH!
      HERE
    end
  end
elsif $VERBOSE
  warn "jdbc-openedge-internal is only for use with JRuby!"
end
