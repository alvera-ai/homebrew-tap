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
  version "0.19.2-next.g845dfdf"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2-next.g845dfdf/alvera-0.19.2-next.g845dfdf-darwin-arm64.tar.gz"
      sha256 "26cc3f061c9f188c4871a2cb7468ccae938941700791ef26c77e9136ca9b52c3"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2-next.g845dfdf/alvera-0.19.2-next.g845dfdf-darwin-x64.tar.gz"
      sha256 "b35dfad781a5b15c6b174f659753fa33cc1585414ef7035b1cc7d25d695aab5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2-next.g845dfdf/alvera-0.19.2-next.g845dfdf-linux-x64.tar.gz"
      sha256 "4711d481c1cf9df2bca0766e25750a6b35f22f9714dd0ebbe5bf6252d898d353"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.19.2-next.g845dfdf/alvera-0.19.2-next.g845dfdf-linux-arm64.tar.gz"
      sha256 "f5fb4afbad57a548e96f1d7a8b225d0021567fc874c031055fa3e41234de7198"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
