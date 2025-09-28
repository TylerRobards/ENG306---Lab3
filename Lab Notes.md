---
id: Lab Notes
aliases: []
tags: []
---

# Lab 3: DC-DC Converters

# Introduction

# Buck Converter
:NOTE: For "Part_2_Buck_50_D.png", the scope probe is on 10x, not 1x

| Duty Cycle | Input Voltage (V) | Input Current | Output Voltage | Output Current | Calculated Efficiency |
|------------|-------------------|---------------|----------------|----------------|-----------------------|
| 0          | 20                | 0             | 0              | 0.4u           | 0/0 = 0               |
| 10         | 20                | 3m            | 1.5            | 14.8m          | 0.02/0.06 = 0.33      |
| 20         | 20                | 7m            | 3.3            | 30m            | 0.10/0.14 = 0.71      |
| 30         | 20                | 15m           | 5.21           | 48m            | 0.25/0.30 = 0.83      |
| 40         | 20                | 30m           | 7              | 71m            | 0.50/0.60 = 0.83      |
| 50         | 20                | 48m           | 9.2            | 92m            | 0.85/0.96 = 0.88      |
| 60         | 20                | 69m           | 12             | 109m           | 1.31/1.38 = 0.95      |
| 70         | 20                | 94m           | 13             | 133m           | 1.73/1.88 = 0.92      |
| 80         | 20                | 120m          | 15             | 148m           | 2.22/2.40 = 0.93      |
| 85         | 20                | 137m          | 16             | 158m           | 2.53/2.74 = 0.92      |

### Voltage Ripple
V_pp/V_out = 3.4V/3.7V = 0.92

### 2 Inductors
V_pp/V_out 3.1V/3.7V = 0.84

## Why are 1 ohm resistors placed in series with the capacitor and inductor in this circuit when it is constructed?
This is to measure the current through the capacitor and inductor. Using a 1 ohm resistor means $I=V$, so the current waveforms can be displayed with the oscilloscope by measuring the voltage over the 1 ohm resistors. Using a 1 ohm resistors also limits resistive losses in the circuit.
## Explain why the oscilloscope probes alligator ground clips must all be at the same point in the circuit, and why the given location in the circuit was chosen?
The oscilloscope ground clip must be common for all channels. This is because it will create short circuits as each ground clip is not electrically isolated. The probe is placed at the node after the inductor. This common point allows for the inductor voltage, inductor current, output voltage and capacitor current to be measured simultaneously.  
## Explain why the 1 ohm resistance in series with the capacitor is wired up on the other side of the capacitor for the constructed circuit?
The resistor should be closest to the common measurement point (oscilloscope ground clip). This is because the only the voltage over the 1 ohm resistor should be measured to display the current capacitor waveform. If the resistor was placed after the capacitor (the ground side), the measurement would be the capacitor voltage and the 1 ohm resistor voltage which is not equivalent to the capacitor current.   
## Which channels were required to be inverted in order to display sensible / normal waveforms?
Channels 3 and 4 will need to be inverted to display positive waveforms. $V_o$ will be inverted as the positive and negative probes are inverted. $i_c$ is also inverted as the positive probe is at the negative side of the current sensing resistor. 
## Plot (using recorded oscilloscope data) or include image from oscilloscope showing inductor current and voltage, output voltage and capacitor current waveforms at the duty cycle you chose to initially  operate at (40%, 50% or 60%)
#TODO
## Comment on the observed waveforms and on how they change when you vary duty cycle, describing your observations by considering theory of the circuit operation and taking particular care to note whether continuous conduction is always maintained
#TODO
## Calculate the minimum switching frequency required to ensure continuous conduction is maintained when an output of about 4 V (20% duty cycle) is required. Compare with your observations.
To calculate the minimum switching frequency for continuous conduction at a 20% duty cycle use the following formula and solve for $f_s$,
$$L=\dfrac{D(1-D)^2R}{2f_s}$$
$$f_s=2.133\:k\text{Hz}$$
#TODO compare this with the plots 
## From your measured data, create a plot of dc output voltage versus duty cycle. Include on the same plot the theoretical curve for a Buck Converter. Discuss briefly.
#TODO add plot "Part_2_Buck_d_vs_Vo.jpg" and discuss
## From your measurements of peak-to-peak output voltage at 20% duty cycle, calculate the % output voltage ripple and compare with theoretical calculations for your circuit if operated at the same duty    cycle.
The peak to peak output voltage is $\Delta V_{0}=3.4V$. Using this to calculate the voltage ripple results in, $\dfrac{\Delta V_0}{V_0}=\dfrac{3.4\:\text{V}}{3.7\:\text{V}}=0.92$. To calculate the theoretical duty cycle use the equation $\dfrac{\Delta V_0}{V_0}=\dfrac{D}{RCf_s}$. This results in a output ripple of, $\dfrac{\Delta V_0}{V_0}=0.0013$
#TODO i think this calc is wrong
## What did you observe when you altered your inductance value? How do the waveforms change? Comment on how it did or might impact the conditions for the boundary between continuous and discontinuous      conduction.

## Assuming you did not actually know the value of the inductor used in your Buck Converter circuit, devise a method for accurately calculating its value (for either single inductance case, or for two     placed either in series or parallel) from the observations and measurements. {Hint: consider the inductor current waveform carefully and take appropriate measurements}

# Boost Converter
| Duty Cycle | Input Voltage (V) | Input Current | Output Voltage | Output Current | Calculated Efficiency |
|------------|-------------------|---------------|----------------|----------------|-----------------------|
| 0          | 10                | 87m           | 8.7            | 87m            |                       |
| 10         | 10                | 111m          | 9.6            | 96m            |                       |
| 20         | 10                | 140m          | 10.8           | 108m           |                       |
| 30         | 10                | 167m          | 11.7           | 117m           |                       |
| 40         | 10                | 233m          | 13.6           | 136m           |                       |
| 50         | 10                | 325m          | 15.7           | 157m           |                       |
| 60         | 10                | 438m          | 17.8           | 178m           |                       |
| 70         | 10                | 773m          | 21.8           | 219m           |                       |
| 80         | 10                | 1.26          | 24.6           | 247m           |                       |
| 85         | 10                | 1.6           | 24.8           | 249m           |                       |

## Plot (using recorded oscilloscope data) or include image from oscilloscope showing inductor current and voltage, and capacitor current waveforms at the duty cycle you chose to initially operate at      (40%,50% or 60%)

## Comment on the inductor waveforms and on how they changed with duty cycle, describing your observations by considering the theory of circuit operation

## Calculate the minimum switching frequency required to ensure continuous conduction is maintained for the whole range of circuit operation (duty cycles). How does this relate to your observations at the conditions you operated the circuit under?
## From your measured data, create a plot of dc output voltage versus duty cycle. Include on the same plot the theoretical curve for a Boost Converter and compare, discussing any differences between       measured and observed.

# Buck-Boost Converter
| Duty Cycle | Input Voltage | Input Current | Output Voltage | Output Current | Calculated Efficiency |
|------------|---------------|---------------|----------------|----------------|-----------------------|
| 0          | 10            | 0             | 0              | 75u            |                       |
| 10         | 10            | 1m            | 0.6            | 6m             |                       |
| 20         | 10            | 4m            | 1.4            | 14m            |                       |
| 30         | 10            | 14m           | 2.9            | 29m            |                       |
| 40         | 10            | 36m           | 4.5            | 46m            |                       |
| 50         | 10            | 80m           | 7.3            | 74m            |                       |
| 60         | 10            | 170m          | 10.5           | 106m           |                       |
| 70         | 10            | 356m          | 14.4           | 145m           |                       |
| 80         | 10            | 827m          | 19.0           | 191m           |                       |
| 85         | 10            | 1.3           | 20.2           | 203m           |                       |

## Plot (using recorded oscilloscope data) or include image from oscilloscope showing inductor current and voltage, and output voltage and capacitor current waveforms at the 50% duty cycle initially       operated at.

## How does the output voltage compare to theoretical output at 50% duty cycle?

## From your measured data, create a plot of dc output voltage versus duty cycle. Include on the same plot the theoretical curve for a Buck-Boost Converter and compare, discussing any differences between  measured and observed

## List all the sources of loss in the Buck-Boost converter, indicating whether you think they increase or decrease (and why) as duty cycle is varied? Relate this to your observed and calculated converter efficiency values.

# Reflection
