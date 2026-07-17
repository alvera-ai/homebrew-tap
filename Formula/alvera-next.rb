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
  version "0.12.1-next.gecb040c"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gecb040c/alvera-0.12.1-next.gecb040c-darwin-arm64.tar.gz"
      sha256 "650287440e88b6880d30ea93628ed11fae909fe8b469c1c5477543d4c78ba929"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gecb040c/alvera-0.12.1-next.gecb040c-darwin-x64.tar.gz"
      sha256 "5089162b9d8df6ca0a6426ecea8983cdbe1d448a5cad8f4f522e86d54f9b1e25"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gecb040c/alvera-0.12.1-next.gecb040c-linux-x64.tar.gz"
      sha256 "3fd5fc7b8362f6b393b9bf1a75b769725efb5f58fc65865c0a01667dee660d5e"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gecb040c/alvera-0.12.1-next.gecb040c-linux-arm64.tar.gz"
      sha256 "a378136c3bfaac914bff6364927cc19954441749e389c8d73e45561798e8d93e"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
