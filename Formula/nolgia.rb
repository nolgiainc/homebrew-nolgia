class Nolgia < Formula
  desc "CLI for the Nolgia generative media platform (image, audio, video)"
  homepage "https://nolgia.ai"
  version "0.3.7"
  license "MIT"

  on_macos do
    url "https://github.com/nolgiainc/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-apple-darwin"
    sha256 "5bb64bca86097c66e7dd43c9bde4aca961262573b72d415fe2638564cbdca863"
  end

  on_linux do
    url "https://github.com/nolgiainc/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-unknown-linux-gnu"
    sha256 "0a089005705d73f6254845b8a5ca9061ead5d03f68232072b3571e2c8a96ff73"
  end

  def install
    binary = Dir["nolgia-*"].first
    bin.install binary => "nolgia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nolgia --version")
  end
end
