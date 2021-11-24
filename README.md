![0]

# NetworkMonitoring

**AzureCTwithJitter** is a repository for that takes the original AzureCT Tool from the original **Azure / NetworkMonitoring** repository and adds Jitter. 

#### AzureCT
The Azure Connectivity Toolkit ([AzureCT][AzureCT]) is a PowerShell module and collection of server side web pages will test, generate, collect, store, and display performance and availability statistics of the network between you and Azure. The two main areas of functionality are:
 - A bandwidth, latency tester, and Jitter test (Get-LinkPerformance) that runs a series of iPerf3 load tests while concurently doing a TCP ping to show latency under various loads.

In this modified version, all functionality remains the same except for an added Jitter test via UDP.

<!--Image References-->
[0]: ./AzureCT/media/AzureNMT.png "Azure Network Monitoring Tools"

<!--Link References-->
[Official AzureCT]: https://github.com/Azure/NetworkMonitoring/tree/master/AzureCT "AzureCT tree"
[Official Azure Doc]: https://docs.microsoft.com/en-us/azure/expressroute/expressroute-troubleshooting-network-performance "AzureCT tree"
