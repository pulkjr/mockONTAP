# Overview

This PowerShell module provides a set of functions that facilitate pester mocking of the NetApp dataONTAP Toolkit functions. 

- [System Requirements](#system-requirements)
- [PowerShell Execution Policy](#powershell-execution-policy)
- [Install Guide](#install-guide)
- [Getting Started](#getting-started)
- [Known Issues](#known-issues)
- [Additional Information](#additional-information)

### Current Build Status

| Project | Status |
|---------|--------|
| mockONTAP | [![Build Status](https://dev.azure.com/netapp/dscONTAP/_apis/build/status/mockONTAP-CI?branchName=master)](https://dev.azure.com/netapp/dscONTAP/_build/latest?definitionId=42?branchName=master) |
| | |

## System Requirements

- Microsoft Windows PowerShell 5.0 or higher.
- Microsoft .Net Framework 4.0 or higher.
- dataONTAP: NetApp ONTAP PowerShell Toolkit.

## PowerShell Execution Policy

The PowerShell execution policy must be set to anything other than the default setting of 'Restricted', as this setting does not allow scripts to run. The files within this module are digitally signed and will run whether the policy is set to 'Unrestricted', 'RemoteSigned' or 'AllSigned'. To do this, right click on PowerShell and select 'Run as Administrator'. Then run the following command:

```powershell
PS C:> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
```

## Install Guide

The mockONTAP module has duplicate commands with the dataONTAP module. As such you must use the 'AllowClobber' switch to install the module

```powershell
Install-Module mockONTAP -AllowClobber
```

## Getting Started

Once the module is installed to an appropriate location you can import the module with the following command:

```powershell
PS C:> Import-Module -Name mockONTAP
```

Create your pester tests.ps1 file.
```powershell
Describe 'Myscript tests' {
    Context 'First Function' {
        #Mock all the functions that your script uses and ensure that only the conditions that you want to see for the test are sent through the function.
        Mock Get-NcVserver {
            New-MockNcVserver -Name 'vserver01' -AggrList @('aggr0', 'aggr1') -Controller $script:Controller
        }
        Mock Get-NcAggr {
            New-MockNcAggr  -Name 'aggr0'
            New-MockNcAggr  -Name 'aggr1'
        }
        Mock Get-NcDisk {
            1..10 | % { New-MockNcDisk -Aggregate 'aggr1' -DiskType 'SSD' }
        }
        Mock Get-NcVol {
            1.10 | % { New-MockNcVol }     
        }
        Mock Get-NcFlashDevice {
            [DataONTAP.C.Types.Flash.FlashDeviceInfo]::new()
        }

        it 'Should throw when the aggr is only SSD disks' {
            { Get-MyAggrsScript } | Should -Throw 'There are only SSDs in this aggr'
        }
    }
}

```

## Known Issues

- None at this time

## Additional Information

- None at this time