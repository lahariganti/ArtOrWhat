live_loop :vinyl do
  sample :vinyl_hiss
  sleep 4
end

live_loop :background do
  sample :loop_mika
  sleep 3
  sample :bass_voxy_hit_c
  sleep 5
  sample :bass_voxy_c, amp: 0.5
end

with_fx :echo do
  live_audio :meta do
    
  end
  
end


