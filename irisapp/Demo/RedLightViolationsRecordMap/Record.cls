/// RECORDMAP: Generated from RecordMap 'Demo.RedLightViolationsRecordMap'
/// on 2019-01-17 at 17:11:23.448 [2019-01-17 22:11:23.448 UTC]
/// by user SuperUser
Class Demo.RedLightViolationsRecordMap.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property INTERSECTION As %String;

Property DATE As %String;

Property TIME As %String;

Property LICENSEPLATENUM As %String;

Property CARTYPE As %String;

Parameter RECORDMAPGENERATED = 1;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>INTERSECTION</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>TIME</Value>
</Value>
<Value name="5">
<Value>LICENSEPLATENUM</Value>
</Value>
<Value name="6">
<Value>CARTYPE</Value>
</Value>
<Value name="7">
<Value>DATE</Value>
</Value>
</Data>
<DataLocation>^Demo.RedLightViolat172C.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^Demo.RedLightViolat172C.RecordD</IdLocation>
<IndexLocation>^Demo.RedLightViolat172C.RecordI</IndexLocation>
<StreamLocation>^Demo.RedLightViolat172C.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
