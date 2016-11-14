module Fastlane
  module Helper
    class S3AndroidHelper
      # class methods that you define here become available in your action
      # as `Helper::S3AndroidHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the s3_android plugin helper!")
      end
    end
  end
end
