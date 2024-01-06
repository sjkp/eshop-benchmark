#!/bin/bash

for runId in {1..10}
do
    echo "Run $runId"
    dotnet clean eShop.Web.slnf
    dotnet build eShop.Web.slnf >> "macbook_m3pro_2_$runId.txt"
    echo "Complete $runId"
done
