live_loop :cyberia1 do
  sample :loop_weirdo
  sleep 3
  sample :tabla_tas1
  sleep 1
  5.times do
    sample :tabla_tas1
    sleep 0.3
    sample :tabla_tun1
    sleep 0.8
    sample :tabla_ke1
    sleep 1
  end
  sleep 10
  sample :loop_garzul
  sleep 5
  sample :loop_3d_printer
end

##| live_audio :stradda  do

##| end