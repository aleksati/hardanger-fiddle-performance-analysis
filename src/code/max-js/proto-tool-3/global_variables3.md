# Global variables

global_midi_pitch = new Array(); 1d
global_note_onset_ratios = new Array(); 2d
global_note_duration_ratios = new Array(); 2d
global_beat_onset_and_duration = new Array(); 2d
global_markers = new Array(); 2d
global_beat_ratios = new Array(); 2d
global_bar_durations = new Array(); 1d
global_filename = "intet"; 1d
global_beats_per_bar = 3; 

global_bach2onset_init = false;

global_sel_len = 0;
global_note_beat_idx = new Array(); 1d
global_note_beat_pos_idx = new Array(); 1d
global_pattrn_idx_lookup = {}; // for 1D lookup