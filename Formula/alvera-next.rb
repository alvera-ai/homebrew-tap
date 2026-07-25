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
  version "0.13.0-next.gbe3581f"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gbe3581f/alvera-0.13.0-next.gbe3581f-darwin-arm64.tar.gz"
      sha256 "4b1350d84027ac860f75aa1119a77985a8493707e1c616719e14549055c685eb"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gbe3581f/alvera-0.13.0-next.gbe3581f-darwin-x64.tar.gz"
      sha256 "eb0aed6920174fd4c57f761520d12477b50553fd52f6ae5e88301202f96fb2d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gbe3581f/alvera-0.13.0-next.gbe3581f-linux-x64.tar.gz"
      sha256 "18e40427e9ce2d1470cb285b2bc65ce3dd26e56e4bd42bddc6d732e9383a53da"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gbe3581f/alvera-0.13.0-next.gbe3581f-linux-arm64.tar.gz"
      sha256 "c32627dd7829cd49d0a393d4e59e7809423ee513c5db0966ffd78c98b7701ef2"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
