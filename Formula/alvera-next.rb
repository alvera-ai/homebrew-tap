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
  version "0.15.0-next.g09659bd"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g09659bd/alvera-0.15.0-next.g09659bd-darwin-arm64.tar.gz"
      sha256 "87f3ad4619dee7d4ba12398602daa224f3b1b3230039505c6acb992e0adf2c72"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g09659bd/alvera-0.15.0-next.g09659bd-darwin-x64.tar.gz"
      sha256 "ef7e8a87c76dcde9a35a9a126c84ad9f8a8521bd069b78bcd115cd1cb424a8c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g09659bd/alvera-0.15.0-next.g09659bd-linux-x64.tar.gz"
      sha256 "87bdd9aa32a456b586b952846a732c1a14a2c108288cf3fe9a38810232ac0111"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0-next.g09659bd/alvera-0.15.0-next.g09659bd-linux-arm64.tar.gz"
      sha256 "6041d441c72b5e122f1fed15c25faf3a73412d2b25eb18215d281b7dd1a82315"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
