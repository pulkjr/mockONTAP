function New-MockNcJob
{
    param(
        $IsRestarted = 'False',
        $IsRestartedSpecified = 'True',
        $JobAffinity = '',
        $JobCategory = 'VOPL',
        $JobCompletion = '',
        $JobDescription = '"quota on" performed for quota policy "default" on volume "vol0" in Vserver "TestSVM"',
        $JobDropdeadTime = '',
        $JobDropdeadTimeSpecified = 'False',
        $JobEndTime = '',
        $JobEndTimeSpecified = 'False',
        $JobId = '871',
        $JobIdSpecified = 'True',
        $JobName = 'Quota Operation',
        $JobNode = 'cluster01-01',
        $JobPriority = 'medium',
        $JobProcess = '',
        $JobProgress = 'Running: Setting quota status. ',
        $JobQueueTime = '1541533849',
        $JobQueueTimeSpecified = 'True',
        $JobSchedule = '@now',
        $JobStartTime = '1541533849',
        $JobStartTimeSpecified = 'True',
        $JobState = 'running',
        $JobStatusCode = '0',
        $JobStatusCodeSpecified = 'True',
        $JobType = 'Quota Operation',
        $JobUsername = 'admin',
        $JobUuid = '4275557f-e1fd-11e8-a9c9-000c2991c0e1',
        $JobVserver = 'TestSVM',
        $NcController = 'cluster01'
    )
    $returnObj = [DataONTAP.C.Types.Job.JobInfo]::New()
    $returnObj.IsRestarted = $IsRestarted
    $returnObj.IsRestartedSpecified = $IsRestartedSpecified
    $returnObj.JobAffinity = $JobAffinity
    $returnObj.JobCategory = $JobCategory
    $returnObj.JobCompletion = $JobCompletion
    $returnObj.JobDescription = $JobDescription
    $returnObj.JobDropdeadTime = $JobDropdeadTime
    $returnObj.JobDropdeadTimeSpecified = $JobDropdeadTimeSpecified
    $returnObj.JobEndTime = $JobEndTime
    $returnObj.JobEndTimeSpecified = $JobEndTimeSpecified
    $returnObj.JobId = $JobId
    $returnObj.JobIdSpecified = $JobIdSpecified
    $returnObj.JobName = $JobName
    $returnObj.JobNode = $JobNode
    $returnObj.JobPriority = $JobPriority
    $returnObj.JobProcess = $JobProcess
    $returnObj.JobProgress = $JobProgress
    $returnObj.JobQueueTime = $JobQueueTime
    $returnObj.JobQueueTimeSpecified = $JobQueueTimeSpecified
    $returnObj.JobSchedule = $JobSchedule
    $returnObj.JobStartTime = $JobStartTime
    $returnObj.JobStartTimeSpecified = $JobStartTimeSpecified
    $returnObj.JobState = $JobState
    $returnObj.JobStatusCode = $JobStatusCode
    $returnObj.JobStatusCodeSpecified = $JobStatusCodeSpecified
    $returnObj.JobType = $JobType
    $returnObj.JobUsername = $JobUsername
    $returnObj.JobUuid = $JobUuid
    $returnObj.JobVserver = $JobVserver
    $returnObj.NcController = $NcController
    return $returnObj
}
function Get-NcJob
{
    [CmdletBinding()]
    param (
        [decimal]
        $Id,

        [string]
        $VserverContext,

        $Attributes,

        [switch]
        $Completed,

        $Controller,

        $Template,

        $Query
    )
    
    New-MockNcJob -JobId $id -JobVserver $VserverContext -NcController $Controller
}