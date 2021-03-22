live_loop :vinyl do
  sample :vinyl_hiss
  sleep 4
end

live_loop :background do
  sample :loop_compus
  sleep 1
  sample :bass_voxy_hit_c
  sleep 6
end

live_audio :meta do
  
end

