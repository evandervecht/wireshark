name 'wireshark'
maintainer 'Ellert van der Vecht'
maintainer_email 'evandervecht@schubergphilis.com'
license 'All rights reserved'
description 'Installs WinPcap and Wireshark'
version '1.0.1'
recipe 'sbp_wireshark::default', 'WinPcap and Wireshark install'

supports 'windows'

depends 'windows'