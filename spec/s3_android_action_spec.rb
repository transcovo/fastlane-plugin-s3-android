describe Fastlane::Actions::S3AndroidAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The s3_android plugin is working!")

      Fastlane::Actions::S3AndroidAction.run(nil)
    end
  end
end
