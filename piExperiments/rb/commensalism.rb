##| Commensalism is a
##| long-term biological
##| interaction in which
##| members of one species gain
##| benefits while those of the other
##| species neither benefit nor are harmed

live_loop :boopblep do
	sample :elec_fuzz_tom
	sleep 1
	sample :elec_beep
	sleep 0.5
	sample :ambi_soft_buzz
	sleep 0.5
	sample :elec_pop
end

live_loop :glitch do
	sample :glitch_bass_g
	sleep 2
	sample :glitch_perc4
	sleep 1 
	with_fx :distortion do
		sample :glitch_robot1, amp: 0.88, decay: 0.7
	end
	sleep 3
	with_synth :dark_ambience do
		sample :vinyl_backspin
	end
end

live_audio :lganti do
	
end


