name 'wireshark'
maintainer 'Ellert van der Vecht'
maintainer_email 'evandervecht@schubergphilis.com'
license 'All rights reserved'
description 'Installs WinPcap and Wireshark'
version '2.0.0'
recipe 'wireshark::default', 'WinPcap and Wireshark install'

supports 'windows'
supports 'ubuntu', '>= 16.04'

depends 'windows'
