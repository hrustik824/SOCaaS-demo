[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri https://aka.ms/amagent -OutFile setup.exe
Start-Process -FilePath setup.exe -ArgumentList "@/Q:A /R:N /C:`"setup.exe /qn /norestart ADD_OPINSIGHTS_WORKSPACE_AZURE_SUBSCRIPTION_ID=$(Subscription.ID) ADD_OPINSIGHTS_WORKSPACE_RESOURCE_ID=$(WorkspaceResource.ID) ADD_OPINSIGHTS_WORKSPACE_ID=$(Workspace.ID) ADD_OPINSIGHTS_WORKSPACE_KEY=$(Workspace.KEY) `/l*v C:\install-mma.log`"" -Wait
