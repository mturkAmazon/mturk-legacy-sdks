﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.3625
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System.Xml.Serialization;

// 
// This source code was auto-generated by xsd, Version=2.0.50727.3038.
// 


/// <remarks/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "2.0.50727.3038")]
[System.SerializableAttribute()]
[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.ComponentModel.DesignerCategoryAttribute("code")]
[System.Xml.Serialization.XmlTypeAttribute(AnonymousType=true, Namespace="http://mechanicalturk.amazonaws.com/AWSMechanicalTurkDataSchemas/2011-11-11/HTMLQ" +
    "uestion.xsd")]
[System.Xml.Serialization.XmlRootAttribute(Namespace="http://mechanicalturk.amazonaws.com/AWSMechanicalTurkDataSchemas/2011-11-11/HTMLQ" +
    "uestion.xsd", IsNullable=false)]
public partial class HTMLQuestion {
    
    private string hTMLContentField;
    
    private string frameHeightField;
    
    /// <remarks/>
    public string HTMLContent {
        get {
            return this.hTMLContentField;
        }
        set {
            this.hTMLContentField = value;
        }
    }
    
    /// <remarks/>
    [System.Xml.Serialization.XmlElementAttribute(DataType="integer")]
    public string FrameHeight {
        get {
            return this.frameHeightField;
        }
        set {
            this.frameHeightField = value;
        }
    }
}
