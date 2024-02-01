#!/bin/bash

if [ env.BRANCH_NAME -eq "dev" ]
then
        echo "push to dev repo"
       
       docker tag newimage:latest deepakramamoorthy/reactapplicationdev/reactapplicationdemo:1.0
       docker push deepakramamoorthy/reactapplicationdev/reactapplicationdemo:1.0
       
        
else
        echo "push to prod repo"
        
	docker tag newimage:latest deepakramamoorthy/reactapplicationprod/reactapplicationdemo:1.0
	docker push deepakramamoorthy/reactapplicationprod/reactapplicationdemo:1.0
fi
