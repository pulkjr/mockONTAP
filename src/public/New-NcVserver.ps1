Function New-NcVserver
{
    [CmdletBinding()]
    Param([switch]$empty)
    $_mockSVM = [DataONTAP.C.Types.Vserver.VserverInfo]::new()
    if ($empty)
    {
        # this is needed to mock the query objects
        return $_mockSVM;
    }
    else
    {
        $_mockSVM.AggrList = @('VICE07_aggr1', 'VICE08_aggr1')
        $_mockSVM.AllowedProtocols = @('nfs', 'fcp')
        $_mockSVM.AntivirusOnAccessPolicy = 'default'
        $_mockSVM.CachingPolicy = 'on_read'
        $_mockSVM.Comment = 'this is a mock object and is like the cake'
        $_mockSVM.State = 'running'
        $_mockSVM.DisallowedProtocols = @('cifs', 'iscsi', 'ndmp')
        $_mockSVM.Ipspace = 'Default'
        $_mockSVM.Language = 'c.utf_8'
        $_mockSVM.LdapDomain = 'ldap.netapp.com'
        $_mockSVM.MaxVolumes = 'unlimited'
        $_mockSVM.NameMappingSwitch = @('file')
        $_mockSVM.NameServerSwitch = @('file')
        $_mockSVM.NcController = New-MockNcController
        $_mockSVM.NisDomain = 'nis.netapp.com'
        $_mockSVM.OperationalState = 'running'
        $_mockSVM.QosPolicyGroup = ''
        $_mockSVM.QuotaPolicy = 'default'
        $_mockSVM.RootVolume = 'Exists_root'
        $_mockSVM.RootVolumeAggregate = 'VICE08_aggr1'
        $_mockSVM.RootVolumeSecurityStyle = 'unix'
        $_mockSVM.SnapshotPolicy = 'default'
        $_mockSVM.Uuid = 'f38f651a-ca22-11e5-9a1e-00a09830cb90'
        $_mockSVM.VolumeDeleteRetentionHours = 12
        $_mockSVM.VserverName = 'Exists'
        $_mockSVM.VserverSubtype = 'default'
        $_mockSVM.VserverType = 'data'
        $_mockSVM.Vserver = 'Exists'
        $_mockSVM.RootVolumeAggregate = 'VICE08_aggr1'
        $_mockSVM.RootVolume = 'Exists'
        return $_mockSVM;
    }
}