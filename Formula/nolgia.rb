class Nolgia < Formula
  desc "CLI for the Nolgia generative media platform (image, audio, video)"
  homepage "https://nolgia.ai"
  version "0.2.7"
  license "MIT"

  on_macos do
    url "https://github.com/nolgiacorp/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-apple-darwin"
    sha256 "9c6ba41ef11df0145f8231620643ccafc2e9f04a18d6d5fb3262b1a873ca5579"
  end

  on_linux do
    url "https://github.com/nolgiacorp/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-unknown-linux-gnu"
    sha256 "ac358a3cdde58f04e13f59ce778ffd5b9d56004ce8aaa893dbf7567ebd07b096"
  end

  def install
    binary = Dir["nolgia-*"].first
    bin.install binary => "nolgia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nolgia --version")
  end
end
