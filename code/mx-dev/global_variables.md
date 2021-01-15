# Global variables

### The transcription data:
global_data = a 2D array with format [ [onset, offset, pitch, bar, numerator, denominator, ornament], etc.. ]

### Indices of the transcription data:
global_data_onset_idx = 0;
global_data_offset_idx = 1;
global_data_pitch_idx = 2;
global_data_bar_idx = 3;
global_data_numer_idx = 4;
global_data_denom_idx = 5;
global_data_orna_idx = 6;

### total beats per bar of the track
global_beats_per_bar = 3;

### an array used to store that markers (beats) and their names. 
global_marker_tags = a 2D array with format [ ["addmarker", beat onset (ms), bar, beat] ["addmarker", beat onset (ms), bar, beat] ]

### Bools
global_calcratio_init = Bools that identifies if the ratio_init function has been called in the [at.calcRatios.js].
global_bach2onset_init = Bools that identifies if the marker_init function has been called in the [at.bach2onset.js].


### store the duration of every beat (ms) in the track.
global_beat_durations = a 1D array with format [ beat1.1 - duration(ms), beat1.2 - duration(ms), beat1.3 - duration(ms) ]

### store the duration of every bar (ms) in the track. onset to onset.
global_bar_durations = a 1D array with format [ bar1 - duration(ms), bar2 - duration(ms), bar3 - duration(ms) ]

### store the note duration percentages with respect to the duration (ms) of the associated beat. 
global_note_dur_ratios = a 2D array with format [ [beat1.1 - note duration ratios] [beat1.2 - note duration ratios] [beat1.3 - note duration ratios] ].

### store the note onset percentages with respect to the duration (ms) of the associated beat. 
global_note_onset_ratios = a 2D array with format [ [beat1.1 - note onset ratios] [beat1.2 - note onset ratios] [beat1.3 - note onset ratios] ].

### store the duration ratios of evey beat with respect to the duration of the bar.
global_beat_ratios = a 2D array with format [ [bar1 - beat1, 2 and 3 ratio] [bar2 - beat1, 2 and 3 ratio] [bar3 - beat1, 2 and 3 ratio] etc.].

### store the filename of the csv imported.
global_filename = ""; // "Vrjenga.csv" 