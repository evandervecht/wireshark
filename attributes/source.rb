#URL for the source code
default['wireshark']['src_url'] = 'https://1.eu.dl.wireshark.org/src/wireshark-2.4.2.tar.xz'
#packages requried to install wireshark on ubuntu.
default['wireshark']['ubuntu_pre_req'] = [ 'libsbc-dev', 'w3m', 'liblz4-dev',
  'libsnappy-dev', 'libspandsp-dev', 'libxml2-dev', 'libsbc-dev',
  'libnghttp2-dev', 'libssh-gcrypt-dev', 'liblz4-dev', 'libsnappy-dev',
  'libspandsp-dev', 'libxml2-dev', 'bison', 'quilt', 'libparse-yapp-perl',
  'libgnutls-dev',  'portaudio19-dev', 'libkrb5-dev', 'liblua5.2-dev',
  'libsmi2-dev', 'libgeoip-dev', 'libnl-genl-3-dev', 'libnl-route-3-dev',
  'asciidoc', 'libgtk-3-dev', 'qtbase5-dev', 'qtbase5-dev-tools',
  'qttools5-dev', 'qttools5-dev-tools', 'qtmultimedia5-dev', 'libqt5svg5-dev',
  'libpcap0.8-dev', 'flex', 'libtool', 'python-ply', 'libc-ares-dev',
  'xsltproc', 'docbook-xsl', 'docbook-xml', 'libxml2-utils', 'libcap2-dev',
  'nmap', 'dpkg-dev', 'cmake' ]

default['wireshark']['ubuntu_symbolic_links'] = [ 'capinfos', 'captype',
  'depcomp', 'dftest', 'dumpcap', 'editcap', 'mergecap', 'missing', 'randpkt',
  'rawshark', 'reordercap', 'sharkd', 'text2pcap', 'tshark', 'wireshark' ]
