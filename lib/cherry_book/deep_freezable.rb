module DeepFreezable
  def deep_freezable(array_or_hash)
    array_or_hash.each do |element|
      element.freeze
    end
    array_or_hash.freeze
  end

  def deep_freezable(array_or_hash)
    case array_or_hash
    when Array
      array_or_hash.each do |element|
        element.freeze
      end
    when Hash
      array_or_hash.each do |key,value|
        key.freeze
        value.freeze
      end
    end
    array_or_hash.freeze
  end
end
