$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://funk.eu/wp-content/plugins/download-monitor/download.php?id=245'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'amt*'

  checksum      = '6b8589994e4cf924f021d654331665bb8334c5ac098b953da9c1ea421ce8dd01'
  checksumType  = 'sha256'

  silentArgs   = ''
  validExitCodes= @(0)
}

$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $toolsDir "install.ahk"
$ahkProc = Start-Process -FilePath $ahkExe `
                         -ArgumentList $ahkFile `
                         -PassThru

$ahkId = $ahkProc.Id

Install-ChocolateyPackage @packageArgs
