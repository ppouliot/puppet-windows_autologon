FROM msopenstack/sentinel-windowsservercore
RUN puppet module install puppetlabs-stdlib && puppet module install puppetlabs-powershell && puppet module install puppet-windowsfeature && puppet module install puppetlabs-registry
RUN cd "c:\ProgramData\PuppetLabs\puppet\etc\modules" && git clone https://github.com/ppouliot/puppet-windows_autologon windows_autologon
RUN puppet apply --debug --trace --verbose --modulepath=c:\ProgramData\PuppetLabs\puppet\etc\modules c:\ProgramData\PuppetLabs\puppet\etc\modules\windows_autologon\tests\init.pp