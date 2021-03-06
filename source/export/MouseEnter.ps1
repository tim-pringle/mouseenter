#------------------------------------------------------------------------
# Source File Information (DO NOT MODIFY)
# Source ID: bcf6f0ff-0313-4a7c-9e7d-942056a18d12
# Source File: C:\Users\tipr_admin\Documents\SAPIEN\Projects\MouseOver\MouseOver.psproj
#------------------------------------------------------------------------
<#
    .NOTES
    --------------------------------------------------------------------------------
     Code generated by:  SAPIEN Technologies, Inc., PowerShell Studio 2015 v4.2.97
     Generated on:       23-11-2015 07:44
     Generated by:        
     Organization:        
    --------------------------------------------------------------------------------
    .DESCRIPTION
        Script generated by PowerShell Studio 2015
#>


#region Source: Startup.pss
#----------------------------------------------
#region Import Assemblies
#----------------------------------------------
[void][Reflection.Assembly]::Load('mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][Reflection.Assembly]::Load('System.Xml, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System.DirectoryServices, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][Reflection.Assembly]::Load('System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System.ServiceProcess, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
#endregion Import Assemblies

#Define a Param block to use custom parameters in the project
#Param ($CustomParameter)

function Main {
<#
    .SYNOPSIS
        The Main function starts the project application.
    
    .PARAMETER Commandline
        $Commandline contains the complete argument string passed to the script packager executable.
    
    .NOTES
        Use this function to initialize your script and to call GUI forms.
		
    .NOTES
        To get the console output in the Packager (Forms Engine) use: 
		$ConsoleOutput (Type: System.Collections.ArrayList)
#>
	Param ([String]$Commandline)
		
	#--------------------------------------------------------------------------
	#TODO: Add initialization script here (Load modules and check requirements)
	
	
	#--------------------------------------------------------------------------
	
	if((Call-MainForm_psf) -eq 'OK')
	{
		
	}
	
	$global:ExitCode = 0 #Set the exit code for the Packager
}






#endregion Source: Startup.pss

#region Source: MainForm.psf
function Call-MainForm_psf
{
	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Xml, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.DirectoryServices, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.ServiceProcess, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$frmMouseEnterDemo = New-Object 'System.Windows.Forms.Form'
	$labelMouseEnterApplication = New-Object 'System.Windows.Forms.Label'
	$labelOverview = New-Object 'System.Windows.Forms.Label'
	$labelOptions = New-Object 'System.Windows.Forms.Label'
	$labelDescription = New-Object 'System.Windows.Forms.Label'
	$panel1 = New-Object 'System.Windows.Forms.Panel'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	$labelOverview_MouseEnter = {
	    $labelOverview.ForeColor = 'Blue'
	    $labelDescription.Text = $overviewText
	}
	
	$labelOverview_MouseLeave = {
	    $labelOverview.ForeColor = 'Black'
	    $labelDescription.Text = $defaultDescriptionText
	}
	
	$labelMouseEnterApplication_MouseEnter = {
	    $labelMouseEnterApplication.ForeColor = 'Blue'
	    $labelDescription.Text = $applicationText
	}
	
	$labelMouseEnterApplication_MouseLeave = {
	    $labelMouseEnterApplication.ForeColor = 'Black'
	    $labelDescription.Text = $defaultDescriptionText
	}
	
	$frmMouseEnterDemo_Load = {
	    $script:defaultDescriptionText = 'Welcome to the MouseEnter example! This example demonstrates how we can use this.'
	    $script:overviewText = 'When the mouse pointer enters an area on which a control resides, a MouseEnter is raised. After the mouse departs from that specific controls area, a MouseLeave event occurs'
	    $script:applicationText = 'This application provides an example of how we can use the MouseEnter and MouseLeave events to enrich the GUI experience on a form'
	    $labelDescription.Text = $script:defaultDescriptionText
	}
		# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$frmMouseEnterDemo.WindowState = $InitialFormWindowState
	}
	
	$Form_StoreValues_Closing=
	{
		#Store the control values
	}

	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$labelMouseEnterApplication.remove_MouseEnter($labelMouseEnterApplication_MouseEnter)
			$labelMouseEnterApplication.remove_MouseLeave($labelMouseEnterApplication_MouseLeave)
			$labelOverview.remove_MouseEnter($labelOverview_MouseEnter)
			$labelOverview.remove_MouseLeave($labelOverview_MouseLeave)
			$frmMouseEnterDemo.remove_Load($frmMouseEnterDemo_Load)
			$frmMouseEnterDemo.remove_Load($Form_StateCorrection_Load)
			$frmMouseEnterDemo.remove_Closing($Form_StoreValues_Closing)
			$frmMouseEnterDemo.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch [Exception]
		{ }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$frmMouseEnterDemo.SuspendLayout()
	#
	# frmMouseEnterDemo
	#
	$frmMouseEnterDemo.Controls.Add($labelMouseEnterApplication)
	$frmMouseEnterDemo.Controls.Add($labelOverview)
	$frmMouseEnterDemo.Controls.Add($labelOptions)
	$frmMouseEnterDemo.Controls.Add($labelDescription)
	$frmMouseEnterDemo.Controls.Add($panel1)
	$frmMouseEnterDemo.BackColor = 'White'
	$frmMouseEnterDemo.ClientSize = '468, 326'
	$frmMouseEnterDemo.Name = 'frmMouseEnterDemo'
	$frmMouseEnterDemo.StartPosition = 'CenterScreen'
	$frmMouseEnterDemo.Text = 'MouseEnter demo'
	$frmMouseEnterDemo.add_Load($frmMouseEnterDemo_Load)
	#
	# labelMouseEnterApplication
	#
	$labelMouseEnterApplication.Location = '310, 155'
	$labelMouseEnterApplication.Name = 'labelMouseEnterApplication'
	$labelMouseEnterApplication.Size = '138, 23'
	$labelMouseEnterApplication.TabIndex = 4
	$labelMouseEnterApplication.Text = 'MouseEnter Application'
	$labelMouseEnterApplication.add_MouseEnter($labelMouseEnterApplication_MouseEnter)
	$labelMouseEnterApplication.add_MouseLeave($labelMouseEnterApplication_MouseLeave)
	#
	# labelOverview
	#
	$labelOverview.Font = 'Microsoft Sans Serif, 9pt'
	$labelOverview.Location = '310, 139'
	$labelOverview.Name = 'labelOverview'
	$labelOverview.Size = '100, 16'
	$labelOverview.TabIndex = 3
	$labelOverview.Text = 'Overview'
	$labelOverview.add_MouseEnter($labelOverview_MouseEnter)
	$labelOverview.add_MouseLeave($labelOverview_MouseLeave)
	#
	# labelOptions
	#
	$labelOptions.Font = 'Microsoft Sans Serif, 9.75pt, style=Bold'
	$labelOptions.Location = '310, 116'
	$labelOptions.Name = 'labelOptions'
	$labelOptions.Size = '100, 23'
	$labelOptions.TabIndex = 2
	$labelOptions.Text = 'Options'
	#
	# labelDescription
	#
	$labelDescription.Font = 'Microsoft Sans Serif, 9.75pt, style=Bold'
	$labelDescription.Location = '12, 116'
	$labelDescription.Name = 'labelDescription'
	$labelDescription.Size = '194, 224'
	$labelDescription.TabIndex = 1
	#
	# panel1
	#
	$panel1.BackColor = '1, 36, 86'
	$panel1.Location = '1, -2'
	$panel1.Name = 'panel1'
	$panel1.Size = '771, 100'
	$panel1.TabIndex = 0
	$frmMouseEnterDemo.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $frmMouseEnterDemo.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$frmMouseEnterDemo.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$frmMouseEnterDemo.add_FormClosed($Form_Cleanup_FormClosed)
	#Store the control values when form is closing
	$frmMouseEnterDemo.add_Closing($Form_StoreValues_Closing)
	#Show the Form
	return $frmMouseEnterDemo.ShowDialog()

}
#endregion Source: MainForm.psf

#region Source: Globals.ps1
	#--------------------------------------------
	# Declare Global Variables and Functions here
	#--------------------------------------------
	
	
	#Sample function that provides the location of the script
	function Get-ScriptDirectory
	{
	<#
		.SYNOPSIS
			Get-ScriptDirectory returns the proper location of the script.
	
		.OUTPUTS
			System.String
		
		.NOTES
			Returns the correct path within a packaged executable.
	#>
		[OutputType([string])]
		param ()
		if ($hostinvocation -ne $null)
		{
			Split-Path $hostinvocation.MyCommand.path
		}
		else
		{
			Split-Path $script:MyInvocation.MyCommand.Path
		}
	}
	
	#Sample variable that provides the location of the script
	[string]$ScriptDirectory = Get-ScriptDirectory
	
	
	#endregion Source: Globals.ps1

#Start the application
Main ($CommandLine)
