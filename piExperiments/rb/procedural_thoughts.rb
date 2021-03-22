##| Procedural Thoughts

with_fx :autotuner do
  live_audio :room do
    with_fx :pan, pan: range(-1, 1) do
      
    end
  end
end

def slow_beat(n_max, ds, amp, rate)
  with_fx :distortion do
    n_max.times do
      sample :bd_haus, amp: amp, rate: rate
      sleep ds
    end
  end
end

def pan_vinyl(amp, rate, attack, pan_mode, beat_stretch)
  with_fx :pan do
    sample :vinyl_backspin, amp: amp, rate: rate, attack: attack, pan: pan_mode, beat_stretch: beat_stretch
  end
end


def tabla(ds, fx, amp, rate)
  live_loop :tabla do
    with_fx fx do
      sample :loop_tabla, amp: amp, rate: rate
      sleep ds
    end
  end
end


live_loop :foundation do
  with_fx [:ixi_techno, :lpf].choose do
    slow_beat(7, 1, 0.1, 0.3)
    pan_vinyl(1, 0.5, 8, get(:ppos), 2)
    sample :guit_e_slide, amp: 0.5, rate: [0.3, 0.5, 0.8].choose
    sleep 2
  end
end

live_loop :layer_one do
  tabla(2.5, [:krush, :wobble].choose, 0.6, [0.5, 1].choose)
  sleep 2.5
end


live_loop :layer_two do
  sample :bd_boom, rate: 0.8, amp: 0.5
  sleep 2
  sample :bd_ada, amp: 0.5
end

