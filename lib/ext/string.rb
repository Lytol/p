# See: <https://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb>
#
class String

  def dasherize
    self.tr('_', '-')
  end

  def snakecase
    word = self.dup
    word.gsub!('::', '/')
    word.gsub!(/([A-Z\d]+)([A-Z][a-z])/,'\1_\2')
    word.gsub!(/([a-z\d])([A-Z])/,'\1_\2')
    word.tr!("-", "_")
    word.downcase!
    word
  end

  def camelcase(uppercase_first_letter = true)
    string = self.dup
    if uppercase_first_letter
      string = string.sub(/^[a-z\d]*/) { $&.capitalize }
    end
    string.gsub(/(?:_|(\/))([a-z\d]*)/) { $2.capitalize }.gsub('/', '::')
  end

end
