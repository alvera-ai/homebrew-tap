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
  version "0.12.1-next.ga594f4f"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ga594f4f/alvera-0.12.1-next.ga594f4f-darwin-arm64.tar.gz"
      sha256 "26e972baf3a5b33e042ff70aea98a5673644fbdc5ce9668ff6d3bfef5ed6e7b9"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ga594f4f/alvera-0.12.1-next.ga594f4f-darwin-x64.tar.gz"
      sha256 "a250be74fcb80ae1851e07ee7c0568d8041fd984279ed83cc18247dafa9b47f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ga594f4f/alvera-0.12.1-next.ga594f4f-linux-x64.tar.gz"
      sha256 "5d8c02731773cc3d9e1faa901c3a9f91d89c20cf9e783d7c4f2b116e6bf6a490"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.ga594f4f/alvera-0.12.1-next.ga594f4f-linux-arm64.tar.gz"
      sha256 "1531650829b37ccc0e523576bf7b86e306fac0e2c730113c80497652f33af7ed"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
