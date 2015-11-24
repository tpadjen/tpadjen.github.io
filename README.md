# Brace Yourself

My blog

## Dev Setup

* Install **jpegoptim** and **optipng** for image compression

  ```bash
  $ brew install jpegoptim optipng
  ```

## Rake

* Run live updating server
  
  ```bash
  $ rake dev
  ```

  Must restart if a change is made to _config.yml

* Create a new draft

  ```bash
  $ rake draft
  ```

* Publish a post

  ```bash
  $ rake publish _drafts/my-awesome-ready-to-publish-draft.md
  ```