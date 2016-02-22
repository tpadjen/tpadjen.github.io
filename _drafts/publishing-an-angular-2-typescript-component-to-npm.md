---
layout: post
title: Publishing an Angular 2 Typescript Component to Npm
description: maximum 155 char description
category: blog
tag: Angular2 Npm Typescript
---

I recently published an Angular 2 Component, [ng2-prism](http://braceyourself.io/ng2-prism) to npm. Here are the details.

## Setup

### Npm
Create a `package.json` either manually or with `npm init`. Then install the angular 2 dependencies, but only save them for development.

```bash
$ npm i --save-dev angular2 es6-promise es6-shim reflect-metadata rxjs zone.js
```

Make sure your `.gitignore` includes `bundle` and `node_modules`.

Create a `.npmignore` file to tell npm which files are only for development.
```
node_modules
src
tsconfig.json
```

### Bundling

Create a javascript file in the root of your project to act as the entrypoint for your package. A common name is `main.js`, but you can call it whatever you want.

main.js
```js
exports.MyComponent = require('./bundle/my.component').MyComponent;
```

Change the `main` key in `package.json` to `main.js` or whatever you named the file.
```json
  "main": "main.js",
```

Create a `.d.ts` file so Typescript projects can read in the typings of your module during development. It should have the same name as the main entrypoint.

```ts
  export * from './bundle/my.component';
```

Create a `tsconfig.json` file to manage typescript compilation.

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
```

Add a build script to `package.json` to compile your component from typescript. Also add a prepublish script to make sure your project gets built every time you publish.
```json
"scripts": {
  ...
  "build": "rm -rf bundle && tsc",
  "prepublish": "npm run build"
  ...
}
```

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
exports.MyComponent = require('./bundle/my.component').MyComponent;
```

