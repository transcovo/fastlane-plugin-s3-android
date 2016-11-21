# fastlane-plugin-s3-android
A simple plugin to upload APK to Amazon S3


## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with fastlane-plugin-s3-android, add it to your Gemfile:

```Gemfile
gem 'fastlane-plugin-s3_android', git: 'https://github.com/transcovo/fastlane-plugin-s3-android'
```

## About s3-android

Upload a new build to Amazon S3 to distribute the build to beta testers. 
This step will generate the necessary HTML for you

The `s3_android` action can upload Android apps (APK).

Add the `s3_android` action after the `gym` step:

```ruby
s3_android
```

You can customize a lot of options:
```ruby
s3_android(
  access_key: ENV['S3_ACCESS_KEY'],               # Required from user.
  secret_access_key: ENV['S3_SECRET_ACCESS_KEY'], # Required from user.
  bucket: ENV['S3_BUCKET'],                       # Required from user.
  region: ENV['S3_REGION'],                       # Required from user.

  apk: 'AppName.apk',                             # Required
  
  path: '/path/to/apk',                           # target path on S3
  html_template_path: '/path/to/template',        # path to HTML template
)
```

It is recommended to **not** store the AWS access keys in the `Fastfile`.


## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

For some more detailed help with plugins problems, check out the [Plugins Troubleshooting](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/PluginsTroubleshooting.md) doc in the main `fastlane` repo.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Plugins.md) in the main `fastlane` repo.

## About `fastlane`

`fastlane` automates building, testing, and releasing your app for beta and app store distributions. To learn more about `fastlane`, check out [fastlane.tools](https://fastlane.tools).
