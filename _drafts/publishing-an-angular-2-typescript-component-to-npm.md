---
layout: post
title: Publishing an Angular 2 Typescript Component to Npm
description: maximum 155 char description
category: blog
tag: Angular2 Npm Typescript
---

I recently published an Angular 2 Component, [ng2-prism](http://braceyourself.io/ng2-prism) to npm. Here are the details.

## Setup

Create a `package.json` either manually or with `npm init`. Then install the angular 2 dependencies, but only save them for development.

```bash
$ npm i --save-dev angular2 es6-promise es6-shim reflect-metadata rxjs zone.js
```

You need to make sure these are installed when your `npm` package is installed, which is what the `peerDependencies` section of `package.json` is for. Open up `package.json` and copy the angular 2 `devDependencies` to `peerDependencies`, so they are listed in both sections. You almost certainly have will have newer versions than those listed below.
```json
  "devDependencies": {
    "angular2": "2.0.0-beta.6",
    "es6-promise": "^3.0.2",
    "es6-shim": "^0.33.3",
    "reflect-metadata": "^0.1.3",
    "rxjs": "5.0.0-beta.0",
    "zone.js": "^0.5.14"
  },
  "peerDependencies": {
    "angular2": "2.0.0-beta.6",
    "es6-promise": "^3.0.2",
    "es6-shim": "^0.33.3",
    "reflect-metadata": "^0.1.3",
    "rxjs": "5.0.0-beta.0",
    "zone.js": "^0.5.14"
  },
```

Create a `tsconfig.json` file.

```json
{
  "compilerOptions": {
    "emitDecoratorMetadata": true,
    "experimentalDecorators": true,
    "target": "es5",
    "module": "commonjs",
    "moduleResolution": "node",
    "removeComments": true,
    "sourceMap": false,
    "outDir": "bundle",
    "declaration": true
  },
  "files": [
    "src/my.component.ts"
  ]
}



## Angular 2 Component

Create a subfolder of the project named `src` to hold all of your component files.

my.component.ts
```typescript
import {Component} from 'angular2/core';


```


## Bundling

Create a javascript file in the root of your project to act as the entrypoint for your package. A common name is `main.js`, but you can call it whatever you want.

main.js
```js
exports.MyComponent = require('./bundle/codeblock.component').MyComponent;
```

