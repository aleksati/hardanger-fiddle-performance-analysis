A work in progress..

## Table of Contents  
* [Short Introduction](#short-introduction)  
* [Tool nr.1 and nr.2](#tool-nr1-and-nr2)
	* [1. Interactive Score](#1-interactive-score)
	* [2. Timing Evolution of Repeating Structures (Motifs and/or phrases)](#2-timing-evolution-of-repeating-structures-motifs-andor-phrases)
	* [Further work suggestions](#further-work-suggestions)
* [Tool nr.3](#tool-nr3)
	* [3. Investigate Musical Properties of Recurring Timing Patterns](#3-investigate-musical-properties-of-recurring-timing-patterns)
	* [Further work suggestions](#further-work-suggestions-1)
* [References](#references)

# Short Introduction
<p align="left">
 <img src="presentation/img/dict.jpg" width=440>
</p>

These 3 prototyped tools are designed to examine performance patterns in traditional Norwegian folk music, specifically focusing on **timing patterns** in Hardanger fiddle performances. 

The concept of "timing patterns" in musicological research often refers to the temporal positions (onsets) of the musical beats. However, Scandinavian folk music research usually considers timing patterns to be a combination of the position (onsets) and length (duration) of the beats. This extended definition is necessary to capture several unique characteristics of Hardanger fiddle performance timing, specifically the asymmetrical beat timings (that the beats have signicantly varying lengths).

Conventional approaches to studying these timing patterns include measuring IOI (inter onset intervals) between beats, statistically examining these IOI distributions and systematicallty analyzing timing profiles of different motifs. However, research suggests that the irregular beat patterns are intematley related to aspects of motivic structures (Johansson, 2017, p. 82). These "melodic-rythmic" structures are therefore interesting performance characteristics for further research and exloration. 

This considered, I propose a set of interactive tools that examine timing patterns of Hardanger fiddle performances in the following manner:  

1. In the first tool, an interactive and adjustable score representation enable dynamic editing of the performance timing.
2. In the second tool, a custom plotting window enables the inspection of "melodic-rythmic" structures. By specificying a bar-range, we plot the timing patterns of the repeating motifs.  
3. In the third tool, we can investigate musical properties of recurring timing patterns. By selecting a note region in the score representation, the program will find other regions that exhibit similar timing patterns. Then, we can examine whether the repeating recurring timing patterns share other musical properties, such as pitch, metrical position and/or dynamics.

The tools are prototyped in MaxMSP v8, using the [Bach Library](https://www.bachproject.net/) (for score representation and visualization), Javascript (for list processing, logic and custom plotting), and Python (for further data science). The computationally annotated performances of Hardanger Fiddle music are provided by the [MIRAGE Research Project](https://www.uio.no/ritmo/english/projects/mirage/).

*PS: None of the prototyped tools take ornamentations into account... yet.*

# Tool nr.1 and nr.2
## 1. Interactive Score
<p align="left">
 <img src="presentation/img/1gif.gif" width="700">
</p>

* Converts all the necessary .csv peformance data* into a dictionary format. Note & beat level ratios are then used to create the score representation.
	* Sidenote - these dictionaries provide the opportunity for further in-depth analysis, as roughly shown [here](https://github.com/AleksanderTidemann/hf-interactive-analysis/blob/main/code/python-jupyter/track-data-plotting-tobar40.ipynb).

* We can dynamically change the beat lengths and onsets via simple click and drag. The score is then refreshed and all note relations are scaled accordingly. This means that editing the beats will alter the onset and duration of all notes, but **not** the note ratios themselves.

* We can also select regions in the score and listen to it (as MIDI piano). 

## 2. Timing Evolution of Repeating Structures (Motifs)
<p align="left">
 <img src="presentation/img/2.jpg" width=auto>
</p>
<p align="center">In this tool we define <b>timing patterns</b> as a sequence of <b>beat duration ratios</b>.</p>

* Here we import a specific text file listing the "location" og all the motifs (harmonic patterns) of the performance. The list is added to the track dictionary.

* By selecting a bar/measure range, for instance from bar-1 to bar-3, the program will see if the selection corresponds to any of the recently collected harmonic patterns. If it finds matches, it colors ALL instances of the pattern in the score and plots the timing patterns of said instances in a custom plot.
	* This enables us to investigate the timing patterns of recurring motifs and how they evolve over time. A technique similar to what is used in (Johansson 2019, p.5). We can of course export the plotted data as a smaller, more concise dictionary.

## Further work suggestions
* When adjusting beat onsets and durations, we only do so in one place. However, if the beat is part of a repeating motif (harmonic pattern), maybe a good idea would be to make the local change propegate to all instances of the motif. So all instances of the repeating motif would be subjected to the same changes. We could have a toggle to turn such propegation "on" and "off".   

* Another addition could be to enable the user to instantly "quantize" all the beats in the performance to have equal durations (based on the total duration of the performance). Then, users could try to "recreate" performance patterns by adjuting the beats. The user could then to go back and forth between a "quantized" version and the "real" version of the performance for reference.<br>

<small>*The note ratios are calculated with respects to their associated beat duration. The beat ratios are calculated with respect to their associated bar duration.</small> <br>


# Tool nr.3
## 3. Investigate Musical Properties of Recurring Timing Patterns.
<p align="left">
 <img src="presentation/img/3.2.jpg" width=auto>
</p>
<p align="center">In this tool we define <b>timing patterns</b> as a sequence of <b>note duration ratios</b>. (see <b>Further work suggestions</b> below for comments on this..)</p>

* In this tool, we import the dictionary we created (and exported) in "tool nr.1 and 2". The dictionary creates the score and every feature that is available in the first tool.

* If we manually select a region in the score, for instance 3 successive notes with our mouse, the program will collect the timing pattern of the selected region and find other regions in the performance where the same timing pattern occurs. Then it colors the found regions and plots them for visual inspection.
	* Since the ratios in question are very specific (percentages with 2 or more decimal points), it's unlikely we find any 100% pattern matches of a manually selected region. Therefore, the tool features a "scale" slider. This slider lets you round all ratios to nearest N, making pattern finding much easier. So the higher the "scale" number is, the more patterns you will find.

* We can plot various musical properties which enables quick inspection of commonalities across regions that share the same timing pattern. In the prototype, I feature these plotting possibilities:
	1. **Metric position**. This will plot the number of selected notes along the X-axis, and the metric position (beat 1, 2 or 3) on the Y-axis. This can help us to see if patterns with similar timing patterns share the same metrical positions, or not. 
	2. **Velocities**. As with the first point, we plot the number of selected notes along the X-axis, but have the note velocity on the Y-axis. This can help us to see if patterns with similar timing profiles share similar dynamics or not. The velocity of a note is indicated by the size of its notehead. The bigger the louder.
	3. **Pitch**. As with the first and second point, we plot the number of selected notes along the X-axis, but have the note pitches on the Y-axis. This can help us to see if patterns with similar timing profiles share similar harmonic content or not.

## Further work suggestions
* This first iteration of "tool nr.3" is a simple proof of concept. Instead of just finding similar sequences of note durations, we should try to find sequences of **inter onset intervals**, or something similar. The current system design can support alteration to our current definition of what a "timing pattern" is. 

* Velocities are, for the time being, randomly generated because transcription data with note dynamics (velocity information) has not yet been provided to me.


# References

Johansson, M. (2017). Empirical Research on Asymmetrical Rhythms in Scandinavian Folk Music: A Critical Review. Studia Musicologica Norvegica, 43(01), 58–89. https://doi.org/10.18261/issn.1504-2960-2017-01-05 

Johansson, M. (2019). Timing-sound interactions in traditional Scandinavian fiddle music: Preliminary and implications. EasyChair Preprint, 5.

