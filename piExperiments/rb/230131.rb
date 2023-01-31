# 230131
# sounds for bike pictures

use_synth :dark_ambience
with_fx :wobble, mix: 0.7 do
  
  live_loop :background do
    sample :ambi_soft_buzz, amp: 0.5
    sleep 3
    sample :ambi_swoosh, amp: 0.8
  end
  
  live_loop :city do
    with_fx :echo, room: 0.8, decay: 8, phase: 0.25, mix: 0.4 do
      live_loop :rhythm do
        sample [:glitch_perc3, :glitch_robot2].choose, amp: 0.5, rate: [0.5, 2, 1, 4].choose * [1, 2, 3, 10].choose
        sleep 2
      end
    end
    sleep 2
  end
  
  live_loop :tabla do
    with_fx :echo do
      rand(1..10).times do
        sample :tabla_re
        sleep 1
        rand(1..5).times do
          sample :tabla_na_o, amp: 0.5
        end
      end
    end
  end
  
  live_loop :random do
    sleep 10
    sample :vinyl_backspin, pan: -0.5
    sleep 15
  end
end
