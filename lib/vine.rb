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
        new_value = value[p.to_s]
        new_value = value[p.to_sym] if new_value.nil?
        value = new_value
      end
      break if value.nil?
    end
    
    value
  end

  alias :vine :access

end
