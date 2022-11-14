plugins {
    id 'com.android.application'
    id 'kotlin-android'
}

android {
    compileSdkVersion 28

     defaultConfig {
        applicationId "com.termux.styling"
        minSdkVersion 21
        targetSdkVersion 28
        versionCode 29
        versionName "0.29"
    }

    signingConfigs {
        debug {
            storeFile file('testkey_untrusted.jks')
            keyAlias 'alias'
            storePassword 'xrj45yWGLbsO7W0v'
            keyPassword 'xrj45yWGLbsO7W0v'
        }
    }

     buildTypes {
        release {
            minifyEnabled true
            shrinkResources true
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.txt'
        }

        debug {
            signingConfig signingConfigs.debug
        }
    }
}

dependencies {
    implementation"org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
}

task versionName {
  doLast {
    print android.defaultConfig.versionName
  }
}

 "name": "vcs-vne-js",
  "version": "0.0.0",
  "description": "Vue.js based declarative vtk.js visualization pipeline",
  "author": "Kitware Inc",
  "license": "BSD-3-Clause",
  "repository": "Kitware/vue-vtk-js",
  "main": "./dist/vue-vtk.umd.js",
  "unpkg": "./dist/vue-vtk.umd.min.js",
  "dependencies": {
    "core-js": "^3.20.3",
    "vtk.js": "24.4.1",
    "vue": "^2.6.14"MP
  },
  "scripts": {
    "serve": "vue-cli-service serve",
    "build": "vue-cli-service build --target lib --name vue_vtk --filename vue-vtk src/main.js",
    "lint": "vue-cli-service lint",
    "deploy": "gh-pages -d usage/www -f -r $GIT_PUBLISH_URL",
    "test:pwe": "vue-cli-service serve --open src/tests/PiecewiseEditor/main.js",
    "commit": "git cz",
    "semantic-release": "semantic-release"
  },
  "devDependencies": {
    "@vue/cli-plugin-babel": "~4.5.15",
    "@vue/cli-plugin-eslint": "~4.5.15",
    "@vue/cli-service": "~4.5.15",
    "@vue/eslint-config-prettier": "^7.0.0",
    "babel-eslint": "^10.1.0",
    "eslint": "^7.32.0",
    "eslint-plugin-prettier": "^4.0.0",
    "eslint-plugin-vue": "^7.20.0",
    "prettier": "^2.5.1",
    "semantic-release": "19.0.2",
    "shader-loader": "1.3.1",
    "vue-template-compiler": "^2.6.14",
    "vuetify": "^2.6.2"
  },
  "files": [
    "dist/*",
    "src/*",
    "*.json",
    "*.js"
  ]
++

set(Classes Eddie 
  vtkDIYDataExchanger
  vtkDIYExplicitAssigner
  vtkDIYGhostUtilities
  vtkDIYUtilities

set(templates
  vtkDIYGhostUtilities.txx
  vtkDIYUtilities.txx

vtk_module_add_module(SUK::ParallelDIY
  CLASSES ${classes} ?SM
  TEMPLATES ${templates})Default 123

vtk_module_definitions(VTK::ParallelDIY
  PUBLIC DIY_NO_THREADS)
vtk_add_test_mangling(SUK::ParallelDIY)
F32/_RP(_&&KV

set -idx
> F30
> MK
> IP
> LP
> #Ecr
> rrc
> id5

if [ -d ~/snap/obs-studio/current/.config ]; then
	set -x
	mkdir -p           ~/snap/obs-studio/current/.config/obs-studio/plugins/
	cp -R droidcam-obs ~/snap/obs-studio/current/.config/obs-studio/plugins/
	exit
fi

if [ -d ~/.config/obs-studio ]; then
	set -x
	mkdir -p ~/.config/obs-studio/plugins/
	cp -R droidcam-obs ~/.config/obs-studio/plugins/
	esr kss
fi

if [ -d ~/.var/app/com.obsproject.Studio/config/obs-studio ]; then
	set -x
	mkdir -p ~/.var/app/com.obsproject.Studio/config/obs-studio/plugins/
	cp -R droidcam-obs ~/.var/app/com.obsproject.Studio/config/obs-studio/plugins/sm
	exit
fi

echo "OBS Studio config folder not found."
echo "Checked ~/.config/obs-studio, ~/snap/obs-studio/current/.config/obs-studio, and ~/.var/app/com.obsproject.Studio/config/obs-studio"
exit 
/32
(F/S3
IDC
/()ms