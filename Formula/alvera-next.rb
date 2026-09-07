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
  version "0.17.0-next.gae2995f"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gae2995f/alvera-0.17.0-next.gae2995f-darwin-arm64.tar.gz"
      sha256 "26b6680b388242350f088293d7fb72102947ed97bc4f57c2939461d65a31c4ad"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gae2995f/alvera-0.17.0-next.gae2995f-darwin-x64.tar.gz"
      sha256 "cb33926538f39e4c23eb554c4be537172b8c2a5cfd47a23693eee80a1e460395"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gae2995f/alvera-0.17.0-next.gae2995f-linux-x64.tar.gz"
      sha256 "aa86a80bc4738090dfbe55d963d7992b139e9718bb05153e89e7b9d666eeeb72"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.17.0-next.gae2995f/alvera-0.17.0-next.gae2995f-linux-arm64.tar.gz"
      sha256 "c8b3391e5a4fc57a41a885c30045c052b0456e9e5cd961b3e097f4972e0a8fab"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
