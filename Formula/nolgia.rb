class Nolgia < Formula
  desc "CLI for the Nolgia generative media platform (image, audio, video)"
  homepage "https://nolgia.ai"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/nolgiainc/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-apple-darwin"
    sha256 "a0dbb8b5069b7160c60b60a1b726bf426aab8a4f5d21e360c3f2183f9908b434"
  end

  on_linux do
    url "https://github.com/nolgiainc/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-unknown-linux-gnu"
    sha256 "529a9e9fe04d81635c3c3b5c76a4b3965c1fc6163c3c40dcb447f71697d7f25c"
  end

  def install
    binary = Dir["nolgia-*"].first
    bin.install binary => "nolgia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nolgia --version")
  end
end
