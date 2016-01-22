---
layout: post
title: Github Group - Angular 1
description: maximum 155 char description
category: angular
tag: blog angular
---

Create a project directory:

{% highlight bash %}
$ mkdir grouper
$ cd grouper
$ git init
{% endhighlight %}

Create .gitignore

{% highlight bash %}
.DS_Store
tmp
logs/*
.idea
!.gitkeep
node_modules/
bower_components/
{% endhighlight %}

Create README.md

{% highlight bash %}
# Grouper
{% endhighlight %}

Commit changes

{% highlight bash %}
$ git commit -m "Initial Commit"
{% endhighlight %}


## NPM

Initialize npm:
{% highlight bash %}
$ npm init
{% endhighlight %}

Use these options:

{% highlight bash %}
name: (grouper)
version: (1.0.0) 0.0.1
description: Create groups of people
entry point: (index.js)
test command:
git repository: <your github repo>
keywords:
author: <your name>
license: (ISC) MIT
{% endhighlight %}


Create `app/index.html`:

```html
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Grouper</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
    <p>Hello</p>
  </body>
</html>
```

Install dev dependencies:

{% highlight bash %}
$ npm i browser-sync gulp --save-dev
{% endhighlight %}

Create gulpfile.js

{% highlight js linenos %}
var gulp = require('gulp');
var browserSync = require('browser-sync').create();

gulp.task('default', ['serve']);

gulp.task('serve', function() {
  browserSync.init({
    server: {
      baseDir: './app'
    }
  });

  gulp.watch('app/**/*.html').on('change', browserSync.reload);
});
{% endhighlight %}


Run the server:

{% highlight bash %}
  $ gulp
{% endhighlight %}

Access the browserSync settings by navigating browser to `localhost:3001`.

## Bower
Install and initialize bower:

{% highlight bash %}
  $ npm i bower -g
  $ bower init
{% endhighlight %}

Use defaults for all bower initialize questions, should end up with `bower.json` similar to this:

{% highlight json linenos %}
{
  "name": "grouper",
  "description": "Create groups of people",
  "authors": [
    "<Your Name>"
  ],
  "license": "MIT",
  "homepage": "<Your project github page>",
  "private": true,
  "ignore": [
    "**/.*",
    "node_modules",
    "bower_components",
    "test",
    "tests"
  ]
}
{% endhighlight %}

Create `.bowerrc`:

{% highlight json linenos %}
{
  "directory": "app/bower_components"
}
{% endhighlight %}

## Angular

### Install angular

{% highlight bash %}
  $ bower i angular --save
{% endhighlight %}

### Update index.html
Add the ng-app directive:

{% highlight html %}
<html ng-app="grouperApp">
{% endhighlight %}
Add the script tags to the head

{% highlight html %}
<head>
  ... // meta tags, title, etc
  <script src="bower_components/angular/angular.js"></script>
  <script src="app.js"></script>
</head>
{% endhighlight %}

Add the controller directive and binding:

{% highlight html %}
<body ng-controller="MainController">
  <p>{{message}}</p>
</body>
{% endhighlight %}

In total:

{% highlight html linenos %}
<html ng-app="grouperApp">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Grouper</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="bower_components/angular/angular.js"></script>
    <script src="app.js"></script>
  </head>
  <body ng-controller="MainController">
    <p>{{message}}</p>
  </body>
</html>
{% endhighlight %}

## Testing

### Karma

Install karma globally:

{% highlight bash %}
  $ npm i karma-cli -g
{% endhighlight %}

Install angular-mocks

{% highlight bash %}
  $ npm i angular-mocks --save-dev
{% endhighlight %}

Initialize karma:

{% highlight bash %}
  $ karma init
{% endhighlight %}


Choose:

  * jasmine
  * no Require.js
  * Chrome
  * Use these file patterns:
    * app/bower_components/angular/angular.js
    * node_modules/angular-mocks/angular-mocks.js
    * app/*.js
    * test/*.spec.js
  * empty - no exclusions
  * no

(Optional) Change singleRun to true in `karma.conf.js`:

{% highlight js %}
singleRun: true,
{% endhighlight %}

Install a better reporter:

{% highlight bash %}
$ npm install karma-spec-reporter --save-dev
{% endhighlight %}

Then change reporters to include only 'spec' `karma.conf.js`:

{% highlight js %}
reporters: ['spec']
{% endhighlight %}

Create `test/app.spec.js`:

{% highlight js linenos %}
'use strict';

describe('grouperApp', function() {

  describe('MainController', function(){
    var scope, mainCtrl;

    beforeEach(module('grouperApp'));

    beforeEach(inject(function($rootScope, $controller) {
      scope = $rootScope.$new();
      mainCtrl = $controller('MainController', {$scope: scope});
    }));

    it('should be defined', function() {
      expect(mainCtrl).toBeDefined();
    });

    it('should have a message', function() {
      scope.$digest();
      expect(scope.message).toEqual("How you doin'?");
    });

  });
});
{% endhighlight %}


Make sure the tests pass:

{% highlight bash %}
  $ karma start
{% endhighlight %}

### Protractor

Install:

{% highlight bash %}
  $ npm i protractor -g
  $ webdriver-manager update
  $ npm i gulp-shell --save-dev
{% endhighlight %}

Add a gulp task at the end of `gulpfile.js`:

```js
// ... other gulp tasks

var shell = require('gulp-shell');

gulp.task('e2e', 
  shell.task(['protractor tests/protractor.conf.js'], {
    ignoreErrors: true
  }));
```

Create an e2e test at `tests/e2e/scenarios.js`:

```js
'use strict';

describe('grouperApp', function() {

  it('should say hello', function() {
    browser.get('/');
    expect(element.all(by.css('p')).first().getText()).
      toMatch(/How you doin'\?/);
  });

});
```

Run the test:

{% highlight bash %}
  $ gulp e2e
{% endhighlight %}
