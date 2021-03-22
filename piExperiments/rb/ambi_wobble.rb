live_loop :exp do
	2.times do
		play 20
		sleep 0.2
		play 10
		sleep 0.1
		play 40
		sleep 1
	end
	
	with_fx :wobble do
		play 70, amp: 0.5
		sleep 0.2
		2.times do play 70
			sleep 1
		end
	end
	
	sleep 0.5
	
	2.times do
		play misc
	end
	
	sleep 0.5
	play misc
end

live_loop :background do
	sample :ambi_glass_hum, amp: 0.1
	sleep 1
	sample :ambi_glass_rub,amp: 0.1
end

def  misc
	t1 = ['tabla_tas1', 'tabla_tas2', 'tabla_tas3']
	t2 = ['tabla_tun1', 'tabla_tun2']
	t3 = ['tabla_dhec', 'tabla_ke1']
	sample t2.choose, amp: 0.2
	sleep 0.1
	sample t1.choose, amp: 0.25, beat_stretch: 5
	sleep 0.2
	sample :tabla_tun1
	sleep 0.2
	2.times do
		sample :tabla_ghe4, amp: 0.3
		sleep 0.3
	end
	
	sleep 0.5
	2.times do |i|
		use_random_seed 2
		4.times do
			use_synth :mod_beep
			play chord(:e3, :minor).choose, attack: 0, release: 0.1, cutoff: rrand_i(5, 10) + i * 10
			sleep 1
		end
	end
end
