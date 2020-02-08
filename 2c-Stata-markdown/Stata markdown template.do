capture log close
log using "C:\Users\nchako\Documents\GitHub\RT2_DC_2019\2c-Stata-markdown\Stata markdown template", smcl replace
//_1
* Write stata code inside chunks
sysuse auto, clear
tab mpg
histogram mpg
graph export "whatever.png", replace
//_2q
qui reg price headroom
est sto reg1
qui regress price headroom trunk
est sto reg2
qui regress price headroom trunk foreign
est sto reg3
esttab reg1 reg2 reg3,///
replace ///
label se///
nomtitles
//_3
Today is `s c(current_date)`
//_^
log close
