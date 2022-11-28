Class Docker.Installer
{

XData setup
{
<Manifest>
  <Default Name="SourceDir" Value="/opt/irisdb/"/>
  <Default Name="Namespace" Value="IRISAPP"/>
  <Default Name="app" Value="irisapp" />

  <Var Name="devpass" Value="DEV"/>

  <Log Level="3" Text="Creating database and namespace ..."/>
  <Namespace Name="${Namespace}" Code="${Namespace}" Data="${Namespace}" Create="yes" Ensemble="1">
    <Configuration>
      <Database Name="${Namespace}" Dir="${SourceDir}{$app}/data" Create="yes" Resource="%DB_${Namespace}"/>
    </Configuration>
    <Log Level="3" Text="Creating Cachè Server pages .."/>
    <CSPApplication Url="/csp/${app}" Directory="${SourceDir}{$app}/csp"  ServeFiles="1" Recurse="1" MatchRoles=":%DB_${Namespace}" AuthenticationMethods="32"/>
  </Namespace>

  <Log Level="3" Text="Creating dev user with role %All ..."/>
  <User Username="dev" PasswordVar="DEV" Roles="%All" Fullname="Udo Leimberger" Namespace="IRISAPP" ChangePassword="0" Enabled="1"  Comment="SuperUser Udo"/>

</Manifest>
}

ClassMethod setup(ByRef pVars, pLogLevel As %Integer = 3, pInstaller As %Installer.Installer, pLogger As %Installer.AbstractLogger) As %Status [ CodeMode = objectgenerator, Internal ]
{
  #; Let XGL document generate code for this method. 
  Quit ##class(%Installer.Manifest).%Generate(%compiledclass, %code, "setup")
}

}
