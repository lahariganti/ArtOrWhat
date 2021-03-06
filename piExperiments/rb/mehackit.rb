live_loop :kik do
  sample :bd_mehackit, amp: 2
  sleep 0.5
end


live_loop :melody do
  oct = [1, 1, 2, 3, 5, 8].choose * 12
  with_fx :reverb, amp: 2 do
    8.times do
      n = (scale 0, :pelog).choose
      sample :bass_voxy_hit_c, rpitch: n + 4 + oct
      sleep 0.125
    end
  end
end


with_fx :reverb, room: 0.8 do
  live_loop :space_scanner do
    with_fx :slicer, phase: 0.25, amp: 1.5 do
      co = (line 70, 130, steps: 8).tick
      play :e1, cutoff: co, release: 7, attack: 1, cutoff_attack: 4, cutoff_release: 4
      sleep 8
    end
  end
  
  live_loop :squelch do
    use_random_seed 3000
    21.times do
      n = (ring :e1, :e2, :e3).tick
      play n, release: 0.125, cutoff: rrand(70, 130), res: 0.9, wave: 1, amp: 0.8
      sleep 0.125
    end
  end
end
