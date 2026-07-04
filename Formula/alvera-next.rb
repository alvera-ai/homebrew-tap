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
  version "0.12.1-next.g2cee16e"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g2cee16e/alvera-0.12.1-next.g2cee16e-darwin-arm64.tar.gz"
      sha256 "136093c02c5c874902f591d9b78484d0b2f8c7a5e14032ab3e7dbfeabccb0423"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g2cee16e/alvera-0.12.1-next.g2cee16e-darwin-x64.tar.gz"
      sha256 "a361d03326710d4159461f75829e069c2591d4c3feba2dbbd4af207e2105192a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g2cee16e/alvera-0.12.1-next.g2cee16e-linux-x64.tar.gz"
      sha256 "45a0e32223cb98d6068c01907db859c361b4fbfb22c0c255eb4faec77ba2ae17"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.g2cee16e/alvera-0.12.1-next.g2cee16e-linux-arm64.tar.gz"
      sha256 "901470a51e24ec48389f19fd0b1dd7975521fcc6a18359745a6d89af6d28e771"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
