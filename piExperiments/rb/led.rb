# 220501
# When you leave the LED on the breadboard and go to bed

live_loop :led do
  with_fx :bitcrusher do
    4.times do
      use_random_seed 3000
      8.times do
        sample :elec_wood, release: 0.1, pan: rrand(-1, 1, res: 0.9), amp: 0.4
        sleep 0.5
        with_fx :band_eq, room: 0.8, decay: 8, phase: 1, mix: 0.4 do
          sample [:elec_bong, :elec_pop, :elec_blup, :glitch_robot1].choose, release: 0.5, amp: 0.6
        end
      end
      
      with_fx :reverb do
        3.times do
          sample :tabla_tun1
          sleep 0.2
          sample :tabla_tas2
          sleep 0.3
        end
      end
      
      live_loop :drive do
        sample :loop_tabla, amp: 2
        sleep 2
      end
    end
  end
end
