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
  version "0.15.0-next.g7ee2875"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g7ee2875/alvera-0.15.0-next.g7ee2875-darwin-arm64.tar.gz"
      sha256 "15c3f60ab4782fab18c88fc37d9bd8b5deb20ec7bd6f39814886738cc41bc995"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g7ee2875/alvera-0.15.0-next.g7ee2875-darwin-x64.tar.gz"
      sha256 "c5c2db3ce95865c356def1f25d499c9aeb240537efa0f04e4f789a18a3122cf7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g7ee2875/alvera-0.15.0-next.g7ee2875-linux-x64.tar.gz"
      sha256 "a284b0fd191b0d932d0e3e45c029041a4f11604f6c861c1235abe00a298188cb"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g7ee2875/alvera-0.15.0-next.g7ee2875-linux-arm64.tar.gz"
      sha256 "38d92a566d7b27d39a0b81dc0638525a22104db817e3039d42abac0d10e9fd4e"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
