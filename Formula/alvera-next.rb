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
  version "0.18.0-next.g768dc23"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g768dc23/alvera-0.18.0-next.g768dc23-darwin-arm64.tar.gz"
      sha256 "a826ccc9e166c3e1afd968b233a9cfbb365cad45b538484c5fa84bccfc6bc819"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g768dc23/alvera-0.18.0-next.g768dc23-darwin-x64.tar.gz"
      sha256 "8b68835f4c696cfbee886e8d7a0501f6a7b30f535a1d09c09ba733fa8f0641be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g768dc23/alvera-0.18.0-next.g768dc23-linux-x64.tar.gz"
      sha256 "fc911135f8e0c0983ecafc9125bec56cd414501be76e0e4f5867af40653c385d"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.18.0-next.g768dc23/alvera-0.18.0-next.g768dc23-linux-arm64.tar.gz"
      sha256 "f5cfbb7682511240ee47c4053c63317134499ef6fcc2f4804534d379aa63aace"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
