A work in progress..

# Brief Description of Toolbox Prototypes

The overall concept is an environment of tools where you can easily import/export specific JSON files (dictionaries) between applications that perform different operations on the performance transcription. 

1. **A manual beat "editor"**

   1. First off, this tool successfully converts all the necessary data from the MIRAGE .csv transcription data into dictionary format; including note onset ratios, note duration ratios, beat ratios, beat onset and durations, total tune duration, pitches etc.
      1. Sidenote -- the dictionaries themselves can be useful and insightful for research. As shown in "src -> code -> python -> track-data-plotting" 
   2. Then, we actually use the dictionary (and it's ratios) to "recreate" the performance as notation in our score. Why this is a preferred solution will become apparent in the next point.
   3. Dynamically change the beat onsets. The performance notation consist of notes and markers indicating the beat positions. We can manually drag and edit these markers, effectively shortening and elongating sections of the performance. When we elongate one part and shorten another, the tool must refresh the score and scale everything accordingly. This means that changing a beat's duration will alter the onset and duration of all it's notes. However, we will not change these note's **ratios** by changing the beat position, we will only change the beat ratios. Lastly, for this to work, it's best to use the dictionary collected ratios as building block for the score itself

   Some notes on the first tool:

   * The note ratios are calculated with respects to their associated beat's duration
   * The beat ratios are calculated with respect to their associated bar's duration.
   * We can note yet change the note onset and durations the same way

2. Visually inspect the **timing patterns of repeating harmonic patterns**

   1. First, we import a specific text file listing all the repeating harmonic patterns of the tune in question. The harmonic patterns are then added to the dictionary.
   2. Then, we can select a bar range, for instance from bar 1 to bar 3. The program will then see if your selection corresponds to any repeating patterns in the text file newly imported. If it finds matches, it will color the relevant parts in the score with different colors. 
   3. More interestingly, it will plot the timing patterns of all found patterns (on top of each other) in a custom plot. We can then investigate how timing patterns of repeating harmonic patterns evolve over the course of the tune. 
   4. Lastly, we can of course export the plotted data in a smaller, more specified dictionary.

3. Visually inspect various musical properties of **recurrent instances of a manually selected region of notes**, based on the selected regions timing profile.

   1. In this tool, we import a dictionary created in the first tool. This creates the score and every feature that is available in the first tool.
   2. Then, we manually select a region in the score, for instance 3 successive notes. The program will then take the note duration ratios of the selection and find other parts in the score where the same duration ratios (in succession) are present. So it finds recurrent timing patterns of a manually selected region of notes, and colors them in the score for visual inspection.
   3. Since the ratios are very specific (percentages with 2 or more decimal points), it's unlikely we find any 100% pattern matches of a selected region in the score. Therefore, the tool features a "scale" slider. This slider lets you round all the note duration ratios to nearest N, making pattern finding much easier. So the higher the "scale" number is, the more rounded the ratios, the more patterns you will find.
   4. Lastly, in this tool we can plot various things. This lets us investigate different properties of repeating sections which share the same timing patterns. In the prototype, I features these plotting possibilities:
      1. The selected notes metric position. This will plot the number of selected notes along the X-axis, and the metric position (beat 1, 2 or 3) on the Y axis. Then, all recurrent instances of the pattern are plotted on top of each other. This plotting can help to see if the repeating pattern share the same metrical position in their bars, or not. 
      2. Velocities. As with the first point, we plot the number of selected notes along the X-axis, but have the note velocity on the Y-axis. In this plot we can see whether the recurrent instances of the patterns share similar velocity or not.
      3. Lastly, pitch. As with the first and second point, we plot the number of selected notes along the X-axis, but have the note pitch on the Y-axis. In this plot we can see whether the recurrent instances of the patterns share similar harmonic content or not.



### Additional Suggestions

* In relation to tool nr.2; it will only find repeating harmonic patterns using the text file. It could be nice to actually detect repeating harmonic patterns in Max itself, using pitch. I do a similar kind of pattern detection in the third tool, when I look for similar note duration ratios throughout the track.
* In relation to tool nr.1; when changing the beat durations and ratios, we only do so locally. A nice idea would be to make a new tool, based on tool 1 and 2, where a local change in beat duration would result in similar changes in all it's recurrent harmonic patterns.
*  