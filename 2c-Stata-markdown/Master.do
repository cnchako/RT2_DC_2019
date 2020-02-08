/*==============================================================================

						MAKING ANALYTICS REUSABLE
							Washington, DC
							 March 1, 2019
							 
					STATA MARKDOWN MASTER DO FILE
							 
==============================================================================*/

/*******************************************************************************
	PART 0: Select sections to run
*******************************************************************************/

	local packages		0
	local paths			1
	local document		1

/*******************************************************************************
	PART 1: Install necessary packages
*******************************************************************************/

	if `packages' {
		
		* Install markstat to use Stata markdown
		ssc install markstat, replace

		* Install whereis to make markstat work
		ssc install whereis, replace
		
		* Install other commands we will use for this session
		ssc install estout, replace
		ssc install unique, replace
		
	}
	
/*******************************************************************************
	PART 2: Set folder paths
*******************************************************************************/

	if `paths' {

		* Tell Stata where to find the relevant programs	
		whereis pdflatex 			"C:\Users\nchako\AppData\Local\Programs\MiKTeX 2.9\miktex\bin\x64\pdflatex.exe"
		whereis pandoc 				"C:\Users\nchako\AppData\Local\Pandoc\pandoc.exe"
		
		* Workshop folder
		global	reusable_analytics	"C:\Users\nchako\Documents\GitHub\RT2_DC_2019\2c-Stata-markdown"
	}
	
/*******************************************************************************
	PART 3: Create document
*******************************************************************************/

	if `document' {
	
		* Copy the Stata style to the same folder as the markdown file to compile in PDF
		//cd "${reusable_analytics}"
		//copy https://www.stata-journal.com/production/sjlatex/stata.sty 	stata.sty
		
		markstat using "${reusable_analytics}/Stata markdown template"
	
	}
	
*============================== THE END =======================================*
