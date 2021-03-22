live_loop :stale do
	use_synth :blade
	notes_set_one = scale(:e3, :chinese, num_octaves: 1)
	notes_set_two = scale(:e3, :chromatic, num_octaves: 1)
	
	use_random_seed 888
	tick_reset_all
	
	with_fx :echo, phase: 0.125, mix: 0.4, reps: 16 do
		sleep 0.25
		play notes_set_one.choose, attack: 0, release: 0.1, pan: (range -1, 1, step: 0.125).tick, amp: rrand(2, 2.5)
	end
	
	play notes_set_two.choose, attack: 0, release: 0.1, pan: (range -1, 1, step: 0.125).tick, amp: rrand(2, 2.5)
end