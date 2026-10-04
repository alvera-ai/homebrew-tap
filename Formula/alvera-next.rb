# Prerelease channel for the alvera CLI. keg_only so it installs
# alongside the stable alvera formula without clobbering it; point the
# alvera command at this build on demand with
#   brew link --overwrite --force alvera-next
# and revert with
#   brew unlink alvera-next
# Updated by release-cli.yml on every prerelease (next dispatch or rc tag).
class AlveraNext < Formula
  desc "Alvera platform CLI (prerelease channel) — point alvera at unstable on demand"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.21.0-next.g0191112"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.0-next.g0191112/alvera-0.21.0-next.g0191112-darwin-arm64.tar.gz"
      sha256 "6dc390918086021879f92b1c74080987ecb62a9cff3218bf4ce19cc328696e6a"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.0-next.g0191112/alvera-0.21.0-next.g0191112-darwin-x64.tar.gz"
      sha256 "0697a68984763f9dd7c944b4817054d95917ffa7eab6276460074d149df3b34e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.0-next.g0191112/alvera-0.21.0-next.g0191112-linux-x64.tar.gz"
      sha256 "590fd1b9df4666a3f61737ff68ec8d3f712ba77436c9d89e77fa18ab786d8ba8"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.0-next.g0191112/alvera-0.21.0-next.g0191112-linux-arm64.tar.gz"
      sha256 "5f53ab44cc810ed851b4e420c8fdf9595e749eb1ee40111c2963b6afb4b57cb6"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
