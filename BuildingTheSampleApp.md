﻿# Building the Sample Public Safety Common Operational Picture App

## Requirements

* Adobe Flash Builder with the 4.6 version of
[Adobe's Flex SDK](http://www.adobe.com/devnet/flex/flex-sdk-download.html).

* If you are using automatic builds,
    1. install Apache Ant 1.8.2 or later - [About](http://ant.apache.org/)
    2. set the path to the FlashBuilderC.exe command-line compiler in file flexbuild.bat

## How To Set Up for All Builds

These steps set up a Flash Builder workspace for this project and then save it into a zip so that the
build process has fresh ingredients to fall back upon in the case of workspace corruption.

1. Download Esri's
[ArcGIS Viewer 3.4 for Flex source](https://github.com/Esri/arcgis-viewer-flex/archive/3.4-src.zip)
from GitHub

2. From the ArcGIS Viewer for Flex zip, extract its top-level folder arcgis-viewer-flex-3.4-src
into your public-safety-cop folder; add two underscores to the front of its name so that git will ignore it;
discard the zip

3. Download Esri's
[ArcGIS API 3.4 for Flex](https://developers.arcgis.com/en/flex/)
from Esri. (You may need to re-try this link after logging in.)

4. From the ArcGIS API for Flex zip, extract the file ArcGIS_Flex\libs\agslib-3.4-2013-06-30.swc
into the __arcgis-viewer-flex-3.4-src\libs folder; discard the zip

5. Start Flash Builder and specify the full path of the public-safety-cop folder as your workspace
(the workspace needs to be one folder level above the project folder)

6. Choose to import a Flash Builder project, and choose the __arcgis-viewer-flex-3.4-src folder as your project
folder; cancel the build if one starts automatically. It's OK if you get the warning that the project will be
upgraded because it was created with a previous version of Flash Builder.

7. Exit Flash Builder and delete the __arcgis-viewer-flex-3.4-src\bin-debug and
__arcgis-viewer-flex-3.4-src\bin-release folders if present

8. Zip the __arcgis-viewer-flex-3.4-src folder into __arcgis-viewer-flex-3.0-src.zip
so that the top-level item in the zip is the __arcgis-viewer-flex-3.4-src folder (i.e.,
when you open the zip, you see just the __arcgis-viewer-flex-3.4-src folder)

## How To Run Automatic Builds

The [Apache Ant](http://ant.apache.org/bindownload.cgi)
program uses the instructions in the file build.xml to unzip a fresh copy of the workspace,
copy the widget and other sources into the workspace, build the widgets, and copy them into the
__distrib distribution directory.

1. At the Windows command line in the public-safety-cop folder, type "ant" to start the Ant build; your
compiled widgets will be put into the folder public-safety-cop\__distrib

The script does not delete the __arcgis-viewer-flex-3.4-src folder that it creates, so
you can use Flash Builder and the public-safety-cop workspace for interactive development and testing.

## How To Complete Set Up for Manual Builds

1. Copy folder "libs"
into the __arcgis-viewer-flex-3.4-src folder;
confirm folder replace for all items (nothing is actually replaced)

2. Copy the contents of folder "config"
into the __arcgis-viewer-flex-3.4-src\src folder;
confirm replacement of config.xml

3. Copy the contents of folder "widgetConfigsOnly"
into the __arcgis-viewer-flex-3.4-src\src\widgets folder;
confirm folder replace for all items (nothing is actually replaced)

4. Copy folders "assets", "com", org", "popups", and "widgets"
into the __arcgis-viewer-flex-3.4-src\src folder;
confirm folder replace for all items (nothing is actually replaced)

5. Start Flash Builder with the public-safety-cop workspace

6. Right-click on the __arcgis-viewer-flex-3.4-src project name in the Package Explorer window and
select Properties

7. Go to the Flex Modules section

8. Add the module sources
BombThreatWidget.mxml, CIWidget.mxml,ClosestFacilityWidget.mxml,
EMHeaderControllerWidget.mxml, EMSplashWidget.mxml, ERGChemicalWidget.mxml,
LivelayerByExceptionWidget.mxml, NationalGridWidget.mxml, PDCWidget.mxml,
ReportByExceptionWidget.mxml, and SwipeWidget.mxml
to the build list for the project

You can now use Flash Builder and the public-safety-cop workspace for interactive development and testing.
