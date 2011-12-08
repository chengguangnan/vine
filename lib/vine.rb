class Hash

  def vine(path)
    ret = self
    path.split('.').each do |p|
      if p.to_i.to_s == p
        ret = ret[p.to_i]
      else
        ret = ret[p.to_s] || ret[p.to_sym]
      end
      break unless ret
    end
    ret
  end

end
