function New-MockNcNetInterface
{
    param(
        $Address = "172.16.32.10",
        $AddressFamily = "ipv4",
        $AdministrativeStatus = "up",
        $Comment = "-",
        $CurrentNode = "cluster01-01",
        $CurrentPort = "e0c",
        $DataProtocols = "{none}",
        $DnsDomainName = "none",
        $ExtendedStatus = "",
        $FailoverGroup = "Default",
        $FailoverPolicy = "broadcast_domain_wide",
        $FirewallPolicy = "mgmt",
        $ForceSubnetAssociation = "",
        $HomeNode = "cluster01-01",
        $HomePort = "e0c",
        $InterfaceName = "cluster_mgmt",
        $Ipspace = "Default",
        $IsAutoRevert = "False",
        $IsDnsUpdateEnabled = "",
        $IsHome = "True",
        $IsIpv4LinkLocal = "",
        $LifUuid = "4d1d8799-bb55-11e8-93b6-000c2991c0e1",
        $ListenForDnsQuery = "False",
        $NcController = "172.16.32.10",
        $Netmask = "255.255.255.0",
        $NetmaskLength = "24",
        $OperationalStatus = "up",
        $Role = "cluster_mgmt",
        $RoutingGroupName = "",
        $SubnetName = "",
        $UseFailoverGroup = "unused",
        $Vserver = "cluster01",
        $Wwpn = "",
        $ForceSubnetAssociationSpecified = "False",
        $IsAutoRevertSpecified = "True",
        $IsDnsUpdateEnabledSpecified = "False",
        $IsHomeSpecified = "True",
        $IsIpv4LinkLocalSpecified = "False",
        $ListenForDnsQuerySpecified = "True",
        $NetmaskLengthSpecified = "True",
        $OpStatus = "up",
        $Controller
    )
    if ( $Controller )
    {
        $NcController = $Controller
    }
    elseif ( $NcController -is [string])
    {
        $NcController = New-MockNcController -Name $NcController
    }
    else
    {
        $NcController = New-MockNcController
    }
    $returnObj = [DataONTAP.C.Types.Net.NetInterfaceInfo]::new()
    $returnObj.Address = $Address
    $returnObj.AddressFamily = $AddressFamily
    $returnObj.AdministrativeStatus = $AdministrativeStatus
    $returnObj.Comment = $Comment
    $returnObj.CurrentNode = $CurrentNode
    $returnObj.CurrentPort = $CurrentPort
    $returnObj.DataProtocols = $DataProtocols
    $returnObj.DnsDomainName = $DnsDomainName
    $returnObj.ExtendedStatus = $ExtendedStatus
    $returnObj.FailoverGroup = $FailoverGroup
    $returnObj.FailoverPolicy = $FailoverPolicy
    $returnObj.FirewallPolicy = $FirewallPolicy
    $returnObj.ForceSubnetAssociation = $ForceSubnetAssociation
    $returnObj.HomeNode = $HomeNode
    $returnObj.HomePort = $HomePort
    $returnObj.InterfaceName = $InterfaceName
    $returnObj.Ipspace = $Ipspace
    $returnObj.IsAutoRevert = $IsAutoRevert
    $returnObj.IsDnsUpdateEnabled = $IsDnsUpdateEnabled
    $returnObj.IsHome = $IsHome
    $returnObj.IsIpv4LinkLocal = $IsIpv4LinkLocal
    $returnObj.LifUuid = $LifUuid
    $returnObj.ListenForDnsQuery = $ListenForDnsQuery
    $returnObj.NcController = $NcController
    $returnObj.Netmask = $Netmask
    $returnObj.NetmaskLength = $NetmaskLength
    $returnObj.OperationalStatus = $OperationalStatus
    $returnObj.Role = $Role
    $returnObj.RoutingGroupName = $RoutingGroupName
    $returnObj.SubnetName = $SubnetName
    $returnObj.UseFailoverGroup = $UseFailoverGroup
    $returnObj.Vserver = $Vserver
    $returnObj.Wwpn = $Wwpn
    $returnObj.ForceSubnetAssociationSpecified = $ForceSubnetAssociationSpecified
    $returnObj.IsAutoRevertSpecified = $IsAutoRevertSpecified
    $returnObj.IsDnsUpdateEnabledSpecified = $IsDnsUpdateEnabledSpecified
    $returnObj.IsHomeSpecified = $IsHomeSpecified
    $returnObj.IsIpv4LinkLocalSpecified = $IsIpv4LinkLocalSpecified
    $returnObj.ListenForDnsQuerySpecified = $ListenForDnsQuerySpecified
    $returnObj.NetmaskLengthSpecified = $NetmaskLengthSpecified
    $returnObj.OpStatus = $OpStatus

    return $returnObj
}
function Get-NcNetInterface
{
    param(
        $Name,
        $Vserver,
        $DataProtocols,
        $FirewallPolicy,
        $Role,
        $Attributes,
        $VserverContext,
        $Controller
    )
    New-MockNcNetInterface -InterfaceName $Name -Vserver $Vserver -DataProtocols $DataProtocols -FirewallPolicy $FirewallPolicy -Role $Role -NcController $Controller
}
