# Loads after gri's LTSV is defined, then patches it for Ruby 3.1+ where nil.to_s may be frozen.

begin
  require 'gri/ltsv'
rescue LoadError
  # If gri isn't available yet, just skip. In normal usage this file is loaded
  # via RUBYOPT for the gri/grapher executables where gri is already installed.
end

module LTSV
  def escape19(s)
    s.to_s.dup
      .force_encoding(Encoding::ASCII_8BIT)
      .gsub(/\n/, "\\n")
      .gsub(/\r/, "\\r")
      .gsub(/\t/, "\\t")
  end

  alias_method :escape, :escape19

  module_function :escape19, :escape
end
