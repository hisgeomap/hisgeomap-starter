# hisgeomap-starter
Some Automation Shell Scripts on building, installing, deploying HisGeoMap Web App.

## Basic Usage
First, give all shell scripts good permission for running. For example: <br/>

``` 
chmod 777 ./*.sh 
```

Then, in <code>init-hisgeomap.sh</code>, config the ENV VARIABLES for the application: <br/>

```
# ENV

HISGEOMAP_ROOT_DIR=~/hisgeomap;
  
HISGEOMAP_MODE=DEV
```

Then, run the following script: <br/>

``` 
./init-hisgeomap 
```
 
