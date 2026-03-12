class Tm < Formula
  desc "Trade crypto from your terminal"
  homepage "https://github.com/true-markets/cli"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/true-markets/cli/releases/download/v#{version}/tm_#{version}_darwin_arm64.tar.gz"
      sha256 "ffb76b5ed4465fa240a2857e63eba76970ef55f73de7df0f58224e0ba74d765c"
    end

    on_intel do
      url "https://github.com/true-markets/cli/releases/download/v#{version}/tm_#{version}_darwin_amd64.tar.gz"
      sha256 "fb66572d1fb2e796214295fa50cbf4f02ddea861798b28b7609a1eb40446858e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/true-markets/cli/releases/download/v#{version}/tm_#{version}_linux_arm64.tar.gz"
      sha256 "e10d1b93189a6b7b705e7c155b1e639e96b5485f9ba22e947b08fb94e93b298a"
    end

    on_intel do
      url "https://github.com/true-markets/cli/releases/download/v#{version}/tm_#{version}_linux_amd64.tar.gz"
      sha256 "0145316b54152ef2c9025a0915c6f61c34a3098416d09c1159dc2ffa3bc93c07"
    end
  end

  def install
    on_macos do
      system "xattr", "-cr", "tm"
    end
    bin.install "tm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tm --version")
  end
end
