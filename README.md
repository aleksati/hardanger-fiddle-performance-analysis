A work in progress..

## Table of Contents  
* [Short Introduction](#short-introduction)  
* [Tool nr.1](#tool-nr1)
	* [1. Interactive Score](#1-interactive-score)
	* [2. Timing patterns of repeating sections and phrases](#2-timing-patterns-of-repeating-sections-and-phrases)
	* [Further work suggestions](#further-work-suggestions)
* [Tool nr.2](#tool-nr2)
	* [3. Investigating Musical Properties of Recurring Timing Patterns](#3-investigate-musical-properties-of-recurring-timing-patterns)
	* [Further work suggestions](#further-work-suggestions-1)
* [References](#references)

# Short Introduction
<p align="left">
 <img src="presentation/img/dict.jpg" width=440>
</p>

These prototyped tools are designed to examine performance patterns in traditional Norwegian folk music, specifically focusing on the **asymmetrical timing patterns** in Hardanger fiddle performances. 

The tools are prototyped in MaxMSP v8, using the [Bach Library](https://www.bachproject.net/) (for score representation and visualization), Javascript (for list processing, logic and custom plotting), and Python (for further data science). High-dimensional performance transcription of Hardanger Fiddle music are provided by the [MIRAGE Research Project](https://www.uio.no/ritmo/english/projects/mirage/).

# Tool nr.1
## 1. Interactive Score
<p align="left">
 <img src="presentation/img/1gif.gif" width="700">
</p>

* Converts all the necessary .csv peformance data* into a dictionary format. Note & beat level ratios are then used to create the score representation.
	* Sidenote - these dictionaries provide the opportunity for further in-depth analysis, as roughly shown [here](https://github.com/AleksanderTidemann/hf-interactive-analysis/blob/main/code/python-jupyter/track-data-plotting-tobar40.ipynb).

* Via simple click and drag, the beat lengths and onsets can be dynamically adjusted. All note properties are then scaled accordingly with resepct to their timing ratios. This means that editing the beats will alter the onset and duration of all notes, but **not** the note ratios themselves.

* An option to quantize all beats to specific asymmetrical ratios is now also included (for instance, 35:40:25, etc.). This enables exploration of various performance timings and variations in post.

* We can also choose to "shift" the entire score when lengthening a particular beat. This way, we can effectively also adjust measure and score length when needed. 

* MIDI audio support.

## 2. Timing patterns of repeating sections and phrases
<p align="left">
 <img src="presentation/img/2.jpg" width=auto>
</p>
<p align="center">In this tool, we specifically define <b>timing patterns</b> as relative <b>beat duration ratios</b>.</p>

* Here we import a specific text file listing the "location" og all the section and phrase repetitions in the performance. This list is added to the track dictionary under "harmonic_patterns".

* By selecting a bar/measure range, for instance from bar-1 to bar-3, the program will see if the selection corresponds to any repeating sections in the performance. If it finds matches, it colors ALL instances of the section and plots its timing patterns.
	* A technique similar to what is used in (Johansson 2019, p.5). We can of course export the plotted data as a smaller, more concise dictionary.

## Further work suggestions

* When adjusting beat onsets and durations, we only do so in one place. However, if the beat is part of a repeating section, maybe a good idea would be to make the local change propegate to all its instances. So all instances would be subjected to the same changes. We could have a toggle to turn such propegation "on" and "off". 

<small>*The note ratios are calculated with respects to their associated beat duration. The beat ratios are calculated with respect to their associated bar duration.</small> <br>


# Tool nr.2
## 3. Musical properties of recurring timing patterns.
<p align="left">
 <img src="presentation/img/3.2.jpg" width=auto>
</p>
<p align="center">In this tool I define <b>timing patterns</b> as <b>note duration ratios</b>. (see <b>Further work suggestions</b> below for comments on this..)</p>

* In the second tool, we import the dictionary we created (and exported) in "tool nr.1". The dictionary creates the score and every feature that is available in the first tool.

* If we manually select a region in the score, for instance 3 successive notes with our mouse, the program will collect the timing pattern of the selected region and find other regions in the performance where the same timing pattern occurs. Then it colors the found regions and plots them for visual inspection.
	* Since the ratios in question are very specific (percentages with 2 or more decimal points), it's unlikely we find any 100% pattern matches of a manually selected region. Therefore, the tool features a "scale" slider. This slider lets you round all ratios to nearest N, making pattern finding much easier. So the higher the "scale" number is, the more patterns you will find.

* We can plot various musical properties which enables quick inspection of commonalities across regions that share the same timing pattern. In the prototype, I feature these plotting possibilities:
	1. **Metric position**. This will plot the number of selected notes along the X-axis, and the metric position (beat 1, 2 or 3) on the Y-axis. This can help us to see if patterns with similar timing patterns share the same metrical positions, or not. 
	2. **Velocities**. As with the first point, we plot the number of selected notes along the X-axis, but have the note velocity on the Y-axis. This can help us to see if patterns with similar timing profiles share similar dynamics or not. The velocity of a note is indicated by the size of its notehead. The bigger the louder.
	3. **Pitch**. As with the first and second point, we plot the number of selected notes along the X-axis, but have the note pitches on the Y-axis. This can help us to see if patterns with similar timing profiles share similar harmonic content or not.

## Further work suggestions
* This first iteration of "tool nr.2" is a simple proof of concept. Instead of just finding similar sequences of note durations, we should try to find sequences of **inter onset intervals**, or something similar. The current system design can support alteration to our current definition of what a "timing pattern" is. 

* Velocities are, for the time being, randomly generated because transcription data with note dynamics (velocity information) has not yet been provided to me.


# References

Johansson, M. (2017). Empirical Research on Asymmetrical Rhythms in Scandinavian Folk Music: A Critical Review. Studia Musicologica Norvegica, 43(01), 58–89. https://doi.org/10.18261/issn.1504-2960-2017-01-05 

Johansson, M. (2019). Timing-sound interactions in traditional Scandinavian fiddle music: Preliminary and implications. EasyChair Preprint, 5.


# License
This toolbox is released under the [GNU General Public License 3.0 license](https://www.gnu.org/licenses/gpl-3.0.en.html).
