# hisgeomap-starter
Some Automation Shell Scripts on building, installing, deploying HisGeoMap Web App.

## Basic Usage
First, give all shell scripts good permission for running. For example: <br/>

``` 
chmod 777 ./*.sh 
```

Then, in <code>init-hisgeomap.sh</code>, config the root directory and mode for the application and save. (Default root dir is set to <code>~/hisgeomap</code>): <br/>

```
# ENV

HISGEOMAP_ROOT_DIR=~/hisgeomap;
  
HISGEOMAP_MODE=DEV
```

Then, run the following script: <br/>

``` 
./init-hisgeomap START PROD
```
 
