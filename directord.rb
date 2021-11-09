class Directord < Formula
  include Language::Python::Virtualenv

  desc "System cluster management focusing on operations and orchestration"
  homepage "https://directord.com"
  url "https://github.com/directord/directord/releases/download/0.11.0/directord-0.11.0.tar.gz"
  sha256 "2ed2988092f8448773ba6d00c61c326d3e63e9755ed26581b57d193a68353a3a"
  license "Apache-2.0"
  head "https://github.com/directord/directord.git"

  depends_on "cmake" # required for ssh-python
  depends_on "libssh" # required for ssh-python
  depends_on "python@3.9"

  resource "diskcache" do
    url "https://files.pythonhosted.org/packages/49/07/079b8b4eb2aba194fca4562c7f014ea45a40130ebff539628c05c52d9050/diskcache-5.2.1.tar.gz"
    sha256 "1805acd5868ac10ad547208951a1190a0ab7bbff4e70f9a07cde4dbdfaa69f64"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/39/11/8076571afd97303dfeb6e466f27187ca4970918d4b36d5326725514d3ed3/Jinja2-3.0.1.tar.gz"
    sha256 "703f484b47a6af502e743c9122595cc812b0271f661722403114f71a79d0f5a4"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/bf/10/ff66fea6d1788c458663a84d88787bae15d45daa16f6b3ef33322a51fc7e/MarkupSafe-2.0.1.tar.gz"
    sha256 "594c67807fb16238b30c44bdf74f36c02cdf22d1c8cda91ef8a0ed8dabf5620a"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "pyzmq" do
    url "https://files.pythonhosted.org/packages/d6/67/98d0d6ac5c784190a0f9728410902471552cffc78cef37830cd86b9cd70d/pyzmq-22.2.1.tar.gz"
    sha256 "6d18c76676771fd891ca8e0e68da0bbfb88e30129835c0ade748016adb3b6242"
  end

  resource "ssh-python" do
    url "https://files.pythonhosted.org/packages/6a/03/effeac5cabc2ba741cebff75de43ae46002469960e4701e321ff8ffe6892/ssh-python-0.9.0.tar.gz"
    sha256 "f38778d40820d068e7b80ebabfb52bd5ff9b480a3b4c350fb6ab59c11886a96a"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ae/3d/9d7576d94007eaf3bb685acbaaec66ff4cdeb0b18f1bf1f17edbeebffb0a/tabulate-0.8.9.tar.gz"
    sha256 "eb1d13f25760052e8931f2ef80aaf6045a6cceb47514db8beab24cded16f13a7"
  end

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/2c/f5/04748914f5c78f7418b803226bd56cdddd70ac369b936b3e24f5158017f1/tenacity-8.0.1.tar.gz"
    sha256 "43242a20e3e73291a28bcbcacfd6e000b02d3857a9a9fff56b297a27afdc932f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/directord", "--version"
  end
end
