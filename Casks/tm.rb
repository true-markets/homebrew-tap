cask "tm" do
  version "0.0.5"

  on_arm do
    url "https://github.com/true-markets/cli/releases/download/v#{version}/tm_#{version}_darwin_arm64.tar.gz"
    sha256 "ffb76b5ed4465fa240a2857e63eba76970ef55f73de7df0f58224e0ba74d765c"
  end

  on_intel do
    url "https://github.com/true-markets/cli/releases/download/v#{version}/tm_#{version}_darwin_amd64.tar.gz"
    sha256 "fb66572d1fb2e796214295fa50cbf4f02ddea861798b28b7609a1eb40446858e"
  end

  name "tm"
  desc "Trade crypto from your terminal"
  homepage "https://github.com/true-markets/cli"

  binary "tm"
end
