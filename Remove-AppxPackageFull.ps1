Get-AppxPackage | Select-String  Microsoft.3DBuilder | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.BingSports | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.CommsPhone | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.ConnectivityStore | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.Getstarted | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.Messaging | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.MicrosoftOfficeHub | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.MicrosoftStickyNotes | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.Office.OneNote | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.Office.Sway | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.OneConnect | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.SkypeApp | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.WindowsCalculator | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.WindowsCamera | Remove-AppxPackage
Get-AppxPackage | Select-String  microsoft.windowscommunicationsapps | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.WindowsFeedbackHub | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.WindowsMaps | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.WindowsPhone | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.WindowsSoundRecorder | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.ZuneMusic | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.ZuneVideo | Remove-AppxPackage
Get-AppxPackage | Select-String  Drawboard.DrawboardPDF | Remove-AppxPackage
Get-AppxPackage | Select-String  4DF9E0F8.Netflix | Remove-AppxPackage
Get-AppxPackage | Select-String  NAVER.LINEwin8 | Remove-AppxPackage
Get-AppxPackage | Select-String  D52A8D61.FarmVille2CountryEscape | Remove-AppxPackage
Get-AppxPackage | Select-String  king.com.CandyCrushSodaSaga | Remove-AppxPackage
Get-AppxPackage | Select-String  34791E63.CanonInkjetPrintUtility | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.5220175982889 | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.Lucille | Remove-AppxPackage

Get-AppxPackage | Select-String  Microsoft.BingFinance | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.BingNews | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.BingWeather | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.People | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.XboxApp | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.Windows.Photos | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.WindowsAlarms | Remove-AppxPackage

Get-AppxPackage | Select-String  Microsoft.Microsoft3DView | Remove-AppxPackage
Get-AppxPackage | Select-String  Microsoft.MSPaint | Remove-AppxPackage
Get-AppxPackage | Select-String  Facebook.Facebook | Remove-AppxPackage
Get-AppxPackage | Select-String  MarchofEmpires | Remove-AppxPackage
Get-AppxPackage | Select-String  BubbleWitch3Saga | Remove-AppxPackage
Get-AppxPackage | Select-String  PolarrPhotoEditorAcademicEdition | Remove-AppxPackage
Get-AppxPackage | Select-String  Keeper | Remove-AppxPackage
Get-AppxPackage | Select-String  AutodeskSketchBook | Remove-AppxPackage
Get-AppxPackage | Select-String  SpotifyMusic | Remove-AppxPackage
Get-AppxPackage | Select-String  DolbyAccess | Remove-AppxPackage

Get-AppxPackage | Select-String  Print3D | Remove-AppxPackage
Get-AppxPackage | Select-String  HiddenCityMysteryofShadows | Remove-AppxPackage
Get-AppxPackage | Select-String  GetHelp | Remove-AppxPackage
Get-AppxPackage | Select-String  wallet | Remove-AppxPackage

Get-AppxPackage -PackageTypeFilter -- Main | Sort-Object Name | Select Name,PackageFullName > Package.txt

