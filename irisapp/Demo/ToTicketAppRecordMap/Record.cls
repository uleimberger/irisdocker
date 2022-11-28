/// RECORDMAP: Generated from RecordMap 'Demo.ToTicketAppRecordMap'
/// on 2019-01-17 at 17:15:08.928 [2019-01-17 22:15:08.928 UTC]
/// by user SuperUser
Class Demo.ToTicketAppRecordMap.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property LicensePlate As %String [ SqlColumnNumber = 2 ];

Property Date As %String [ SqlColumnNumber = 3 ];

Property Time As %String [ SqlColumnNumber = 4 ];

Property Intersection As %String [ SqlColumnNumber = 5 ];

Parameter RECORDMAPGENERATED = 1;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>LicensePlate</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>Time</Value>
</Value>
<Value name="5">
<Value>Intersection</Value>
</Value>
<Value name="6">
<Value>Date</Value>
</Value>
</Data>
<DataLocation>^Demo.ToTicketAppRec20DF.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^Demo.ToTicketAppRec20DF.RecordD</IdLocation>
<IndexLocation>^Demo.ToTicketAppRec20DF.RecordI</IndexLocation>
<StreamLocation>^Demo.ToTicketAppRec20DF.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
