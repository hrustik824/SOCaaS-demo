{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red0\green0\blue0;\red136\green185\blue102;
}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\csgray\c0\c0;\cssrgb\c59608\c76471\c47451;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs21 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec4 \shad\shadx0\shady-20\shadr0\shado0 \shadc0 powershell -command "Invoke-WebRequest -Uri https://aka.ms/amagent -OutFile setup.exe"\
powershell -command "Start-Process -FilePath setup.exe -ArgumentList '/Q:A /R:N /C:\\""setup.exe /qn NOAPM=1 ADD_OPINSIGHTS_WORKSPACE=1 OPINSIGHTS_WORKSPACE_AZURE_SUBSCRIPTION_ID=$(Subscription.ID) OPINSIGHTS_WORKSPACE_RESOURCE_ID=$(WorkspaceResource.ID) OPINSIGHTS_WORKSPACE_ID=$(Workspace.ID) OPINSIGHTS_WORKSPACE_KEY=$(Workspace.KEY) /l*v C:\\TEMP\\am.log\\"" ' -Wait -NoNewWindow"}