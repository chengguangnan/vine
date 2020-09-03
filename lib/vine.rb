module Enumerable

  def segmentation(n)
    0.upto(size - 2).to_a.combination(n - 1).to_a.map do |s|
      [-1, * s, size - 1].each_cons(2).map {|i, j| self[(i + 1)..j] }
    end
  end

end




class Hash
  
  def access(path)
    value = self
    
    path.to_s.split('.').each do |p|
      if p.to_i.to_s == p
        value = value[p.to_i]
      else
        value = value[p].nil? ? value[p.to_sym] : value[p]
      end
      break if value.nil?
    end
    
    value
  end

  def set(path, value)
    keys = []
    path = path.to_s.split('.')
    
    
    [*path, nil].each_cons(2) do |key,nextkey|
      tmp_hash = keys.inject(self, :fetch)
      

      if key.to_i.to_s == key
        key = key.to_i
      elsif tmp_hash[key].nil?
        key = key.to_sym
      end

      if tmp_hash[key].nil?
        tmp_hash[key] = {}
      elsif nextkey.to_i.to_s == nextkey && !tmp_hash[key].is_a?(Array)
        tmp_hash[key] = []
      elsif !nextkey.nil? && !(tmp_hash[key].is_a?(Hash) || tmp_hash[key].is_a?(Array))
        # override to {} only if it's not a Hash or Array
        # maybe this should be depend on the type of nextkey? not sure if that is needed
        tmp_hash[key] = {}
      end

      keys << key
    end # each_cons

    last_key = keys.pop
    keys.inject(self, :fetch)[last_key] = value
  end

  alias :vine :access

end
