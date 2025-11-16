class Bunny
  def hop(distance)
    return "Lie down!" if distance.zero?

    # Incrementally build the hop
    hop = String.new
    if distance.positive?
      hop << "Ready"
    else
      hop << "Turn"
    end
    hop << " and "
    if distance.abs > 1
      hop << "hippity-hop!"
    else
      hop << "hop!"
    end
    hop
  end
end
