$pkgVer = "3.1.0-beta-idesse"
New-Item -ItemType Directory -Force -Path .\nuget
msbuild /t:Pack /p:Configuration=Release /p:PackageOutputPath=..\artifacts\nuget /p:PackageVersion=$pkgVer /p:IncludeSymbols=true /p:SymbolPackageFormat=snupkg ..\ZXing.Net.Mobile\ZXing.Net.Mobile.csproj
msbuild /t:Pack /p:Configuration=Release /p:PackageOutputPath=..\artifacts\nuget /p:PackageVersion=$pkgVer /p:IncludeSymbols=true /p:SymbolPackageFormat=snupkg ..\ZXing.Net.Mobile.Forms\ZXing.Net.Mobile.Forms.csproj
