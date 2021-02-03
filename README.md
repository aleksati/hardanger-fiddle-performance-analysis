A work in progress..

# Brief Description

The prototyped tools examine performance patterns of Hardanger fiddle music. To narrow the scope, I decided to design a set of tools that specifically explore the timing patterns of such performances. The tools examine these aspects in 2 general ways; first, by looking at how the timing of repeating harmonic structures (motifs) evolve over time, and secondly by investigating other musical properties of recurrent timing patterns, such as pitch, metrical position and dynamics.

Additionally, several data visualization techniques are featured, such as interactive score representation, automatic coloring and dynamic plotting capabilities, as well as the ability to edit beat lengths and onsets via simple click and drag.

The tools are prototyped in MaxMSP v8, using the [Bach Library](https://www.bachproject.net/) (for score representation and visualization), Javascript (for list processing, logic and custom plotting), and Python (for further data science in the Jupyter Notebook environment). With computationally annotated performances of Hardanger Fiddle music provided by the [MIRAGE Research Project](https://www.uio.no/ritmo/english/projects/mirage/).

### 1. The editor

<p align="left">
 <img src="figs/dict.jpg" width=440>
</p>

1. This tool converts all the necessary .csv peformance data into JSON format.
	1. Sidenote - the dictionaries provide the opportunity for more data science, as shown in the jupyter notebook files in "src -> code -> python". 

2. We use the the JSON information (and it's ratios) to "recreate" the performance in our score along with beat markers. 

3. We dynamically change the beat lengths and onsets via click and drag. The score is then refreshed and all note relations are scaled accordingly. This means that editing the beat's will alter the onset and duration of all notes, but **not** the note **ratios**.

**Some notes:**

* The note ratios are calculated with respects to their associated beat duration.
* The beat ratios are calculated with respect to their associated bar duration.
* We cannot drag a beat marker across one of its neighbouring beats. This will simply result in the beat markers changing their names and configurations to fit. (a nice little brag to myself here)

<p align="left">
 <img src="figs/1.jpg" width=440>
</p>
<p align="left">
 <img src="figs/1.1.jpg" width=440>
</p>

### 2. Exploring timing patterns of structures (repeating motifs and/or harmonic patterns)
This is an extension of the first tool.

1. We import a specific text file listing all the repeating harmonic patterns of the performance. The list is added to the track JSON.

2.By selecting a bar/measure range, for instance from bar 1 to bar 3, the program will see if your selection corresponds to any of the harmonic patterns. If it finds matches it colors ALL instances of the pattern in the performance.

3. The main feature of this tool is its capability of plotting the timing patterns (in this case the **beat duration ratios**) of all the found patternm instances in a custom plot (built in jsui). We can then investigate how the timing of the repeating patterns evolve over the course of the performance. We can of course also export the plotted data in a smaller, more concise JSON format.

**Some notes:**
* The plotted info (beat duration ratios of the motifs) does not consider the motif duration as reference. Rather, the beat durations are calculated with respect to their associated bar, as brefly mentioned.

<p align="left">
 <img src="figs/2.jpg" width=auto>
</p>


### 3. Investigate musical properties of recurrent timing patterns.

1. In this tool, we import the JSON we created (and exported) in the first and second tool. The JSON creates the score and every feature that is available in the first tool.

2. If we manually select a region in the score, for instance 3 successive notes with our mouse, the program will collect the **note duration ratios** of the selected region and find other regions in the performance where the same timing pattern occurs and colors them for visual inspection.
	1. Since the ratios in question are very specific (percentages with 2 or more decimal points), it's unlikely we find any 100% pattern matches of a manually selected region. Therefore, the tool features a "scale" slider. This slider lets you round all the note duration ratios to nearest N, making pattern finding much easier. So the higher the "scale" number is, the more rounded the ratios, the more patterns you will find.

3. We can then plot various musical properties of matching patterns. This enables us to quickly investigate commonalities across regions that share the same timing pattern. In the prototype, I feature these plotting possibilities:
	1. **Metric position**. This will plot the number of selected notes along the X-axis, and the metric position (beat 1, 2 or 3) on the Y-axis. This can help us to see if patterns with similar timing patterns share the same metrical positions, or not. 
	2. **Velocities**. As with the first point, we plot the number of selected notes along the X-axis, but have the note velocity on the Y-axis. This can help us to see if patterns with similar timing profiles share similar dynamics or not.
	3. **Pitch**. As with the first and second point, we plot the number of selected notes along the X-axis, but have the note pitches on the Y-axis. This can help us to see if patterns with similar timing profiles share similar harmonic content or not.


**Some notes:**
* Velocities are, for the time being, randomly generated because transcription data with note intensity (velocity) information has not yet been provided. The velocity of a note is indicated by the size of its notehead. The bigger the louder.  

<p align="left">
 <img src="figs/3.jpg" width=auto>
</p>


## Additional Suggestions / Further Work

* None of the tools explore the timing patterns of ornamentations or how they relate to the "regular" notes. This could be worth looking into.

* In relation to tool nr.1:
	* when changing the beat durations and ratios, we only do so locally. A nice idea would be to make a new tool, based on 1 and 2, where a local beat duration change would result in similar changes being made to all of it's associated harmonic patterns.

	* Instead of manually editing the beat onset and durations, maybe have one button that instantly quantizes the performance. And another button that recreates the performance variations again. 

	* We could explore the possibility of changing the note onset and duration ratios as well.
	
* In relation to tool nr.2: 
	* It will only find repeating harmonic patterns using the text file. It could be nice to actually detect repeating harmonic patterns in Max itself, using pitch. I do a similar kind of pattern detection in the third tool, when I look for similar note duration ratios throughout the track.

