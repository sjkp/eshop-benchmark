#!/bin/bash

for runId in {1..10}
do
    echo "Run $runId"
    dotnet clean eShop.Web.slnf --configuration=release
    dotnet build eShop.Web.slnf --configuration=release >> "macbook_m3pro_2_$runId.txt"
    echo "Complete $runId"
done
