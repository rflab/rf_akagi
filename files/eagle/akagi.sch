<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.05" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="mylib">
<packages>
<package name="PIN2">
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.127" layer="21"/>
<pad name="P$1" x="-1.27" y="0" drill="1" shape="octagon"/>
<pad name="P$2" x="1.27" y="0" drill="1" shape="octagon"/>
<text x="-2.54" y="1.27" size="1.27" layer="21">1</text>
</package>
<package name="PIN3">
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-1.27" x2="3.81" y2="-1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.127" layer="21"/>
<pad name="2" x="0" y="0" drill="1" shape="octagon"/>
<pad name="1" x="-2.54" y="0" drill="1" shape="octagon"/>
<pad name="3" x="2.54" y="0" drill="1" shape="octagon"/>
</package>
<package name="CAPACITOR">
<wire x1="-1.27" y1="0" x2="-0.635" y2="0" width="0.127" layer="21"/>
<wire x1="1.27" y1="0" x2="0.635" y2="0" width="0.127" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0.635" y2="-1.27" width="0.127" layer="21"/>
<circle x="0" y="0" radius="2.5" width="0.127" layer="21"/>
<pad name="P$1" x="1.27" y="0" drill="1" shape="octagon"/>
<pad name="P$2" x="-1.27" y="0" drill="1" shape="octagon"/>
</package>
<package name="REGISTER">
<wire x1="-2" y1="1" x2="2" y2="1" width="0.127" layer="21"/>
<wire x1="2" y1="1" x2="2" y2="-1" width="0.127" layer="21"/>
<wire x1="2" y1="-1" x2="-2" y2="-1" width="0.127" layer="21"/>
<wire x1="-2" y1="-1" x2="-2" y2="1" width="0.127" layer="21"/>
<wire x1="2.032" y1="0" x2="2.032" y2="-0.0635" width="0.127" layer="21"/>
<wire x1="-3.81" y1="0" x2="-2.032" y2="0" width="0.127" layer="21"/>
<wire x1="2.032" y1="0" x2="3.81" y2="0" width="0.127" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1" shape="octagon"/>
<pad name="P$2" x="3.81" y="0" drill="1" shape="octagon"/>
</package>
<package name="DIORDE">
<wire x1="-1.905" y1="0" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.127" layer="21"/>
<wire x1="0.635" y1="0" x2="0" y2="0.635" width="0.127" layer="21"/>
<wire x1="0.635" y1="0.635" x2="0.635" y2="0" width="0.127" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0.635" y1="0" x2="1.905" y2="0" width="0.127" layer="21"/>
<pad name="A" x="-2.54" y="0" drill="1" shape="octagon"/>
<pad name="C" x="2.54" y="0" drill="1" shape="octagon"/>
</package>
<package name="RESISTOR_VALIABLE">
<wire x1="-3.175" y1="-3.175" x2="-3.175" y2="3.175" width="0.127" layer="21"/>
<wire x1="-3.175" y1="3.175" x2="3.175" y2="3.175" width="0.127" layer="21"/>
<wire x1="3.175" y1="3.175" x2="3.175" y2="-3.175" width="0.127" layer="21"/>
<wire x1="3.175" y1="-3.175" x2="-3.175" y2="-3.175" width="0.127" layer="21"/>
<pad name="M" x="0" y="-2.54" drill="1" shape="octagon"/>
<pad name="A" x="-2.54" y="0" drill="1" shape="octagon"/>
<pad name="B" x="2.54" y="0" drill="1" shape="octagon"/>
</package>
<package name="ARDUINO_PRO_MINI">
<pad name="9" x="-7.62" y="-13.97" drill="1" shape="octagon"/>
<pad name="8" x="-7.62" y="-11.43" drill="1" shape="octagon"/>
<pad name="7" x="-7.62" y="-8.89" drill="1" shape="octagon"/>
<pad name="6" x="-7.62" y="-6.35" drill="1" shape="octagon"/>
<pad name="5" x="-7.62" y="-3.81" drill="1" shape="octagon"/>
<pad name="4" x="-7.62" y="-1.27" drill="1" shape="octagon"/>
<pad name="3" x="-7.62" y="1.27" drill="1" shape="octagon"/>
<pad name="2" x="-7.62" y="3.81" drill="1" shape="octagon"/>
<pad name="GND0" x="-7.62" y="6.35" drill="1" shape="octagon"/>
<pad name="RST0" x="-7.62" y="8.89" drill="1" shape="octagon"/>
<pad name="RXI0" x="-7.62" y="11.43" drill="1" shape="octagon"/>
<pad name="TXO0" x="-7.62" y="13.97" drill="1" shape="octagon"/>
<pad name="RAW" x="7.62" y="13.97" drill="1" shape="octagon"/>
<pad name="GND1" x="7.62" y="11.43" drill="1" shape="octagon"/>
<pad name="RST1" x="7.62" y="8.89" drill="1" shape="octagon"/>
<pad name="VCC0" x="7.62" y="6.35" drill="1" shape="octagon"/>
<pad name="A3" x="7.62" y="3.81" drill="1" shape="octagon"/>
<pad name="A2" x="7.62" y="1.27" drill="1" shape="octagon"/>
<pad name="A1" x="7.62" y="-1.27" drill="1" shape="octagon"/>
<pad name="A0" x="7.62" y="-3.81" drill="1" shape="octagon"/>
<pad name="13" x="7.62" y="-6.35" drill="1" shape="octagon"/>
<pad name="12" x="7.62" y="-8.89" drill="1" shape="octagon"/>
<pad name="11" x="7.62" y="-11.43" drill="1" shape="octagon"/>
<pad name="10" x="7.62" y="-13.97" drill="1" shape="octagon"/>
<wire x1="-8.89" y1="-15.24" x2="-8.89" y2="17.78" width="0.127" layer="21"/>
<wire x1="-8.89" y1="17.78" x2="8.89" y2="17.78" width="0.127" layer="21"/>
<wire x1="8.89" y1="17.78" x2="8.89" y2="-15.24" width="0.127" layer="21"/>
<wire x1="8.89" y1="-15.24" x2="-8.89" y2="-15.24" width="0.127" layer="21"/>
<pad name="A5" x="5.08" y="5.08" drill="1" shape="octagon"/>
<pad name="A4" x="5.08" y="2.54" drill="1" shape="octagon"/>
<pad name="A7" x="5.08" y="-5.08" drill="1" shape="octagon"/>
<pad name="A6" x="5.08" y="-7.62" drill="1" shape="octagon"/>
<pad name="BLK" x="-6.35" y="16.51" drill="1" shape="octagon"/>
<pad name="GND2" x="-3.81" y="16.51" drill="1" shape="octagon"/>
<pad name="VCC1" x="-1.27" y="16.51" drill="1" shape="octagon"/>
<pad name="RXI1" x="1.27" y="16.51" drill="1" shape="octagon"/>
<pad name="TXO1" x="3.81" y="16.51" drill="1" shape="octagon"/>
<pad name="GRN" x="6.35" y="16.51" drill="1" shape="octagon"/>
</package>
<package name="PIN_4_1">
<pad name="1" x="-3.81" y="0" drill="1" shape="octagon"/>
<pad name="2" x="-1.27" y="0" drill="1" shape="octagon"/>
<pad name="3" x="1.27" y="0" drill="1" shape="octagon"/>
<pad name="4" x="3.81" y="0" drill="1" shape="octagon"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-5.08" y2="1.27" width="0.127" layer="21"/>
<text x="-5.08" y="1.27" size="1.27" layer="21">1</text>
<text x="3.81" y="1.27" size="1.27" layer="21">4</text>
</package>
<package name="PIN6">
<wire x1="-7.62" y1="1.27" x2="-7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-1.27" x2="7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="7.62" y2="1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="1.27" x2="-7.62" y2="1.27" width="0.127" layer="21"/>
<pad name="3" x="-1.27" y="0" drill="1" shape="octagon"/>
<pad name="4" x="1.27" y="0" drill="1" shape="octagon"/>
<pad name="2" x="-3.81" y="0" drill="1" shape="octagon"/>
<pad name="1" x="-6.35" y="0" drill="1" shape="octagon"/>
<pad name="5" x="3.81" y="0" drill="1" shape="octagon"/>
<pad name="6" x="6.35" y="0" drill="1" shape="octagon"/>
</package>
<package name="TRANSISTOR">
<wire x1="-2.1848" y1="-1.3385" x2="2.2873" y2="-1.3436" width="0.127" layer="21" curve="-232.22977"/>
<wire x1="-2.1848" y1="-1.3385" x2="2.2873" y2="-1.3436" width="0.127" layer="21"/>
<pad name="C" x="0" y="0" drill="1" shape="octagon"/>
<pad name="E" x="-2.54" y="0" drill="1" shape="octagon"/>
<pad name="B" x="2.54" y="0" drill="1" shape="octagon"/>
</package>
<package name="DIP8">
<wire x1="3.81" y1="5.08" x2="3.81" y2="-5.08" width="0.127" layer="21"/>
<wire x1="3.81" y1="-5.08" x2="-3.81" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-5.08" x2="-3.81" y2="5.08" width="0.127" layer="21"/>
<wire x1="-3.81" y1="5.08" x2="-1.27" y2="5.08" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.08" x2="3.81" y2="5.08" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.08" x2="-1.27" y2="5.08" width="0.127" layer="21" curve="-180"/>
<pad name="2" x="-3.81" y="1.27" drill="1" shape="octagon"/>
<pad name="1" x="-3.81" y="3.81" drill="1" shape="octagon"/>
<pad name="4" x="-3.81" y="-3.81" drill="1" shape="octagon"/>
<pad name="3" x="-3.81" y="-1.27" drill="1" shape="octagon"/>
<pad name="5" x="3.81" y="-3.81" drill="1" shape="octagon"/>
<pad name="6" x="3.81" y="-1.27" drill="1" shape="octagon"/>
<pad name="7" x="3.81" y="1.27" drill="1" shape="octagon"/>
<pad name="8" x="3.81" y="3.81" drill="1" shape="octagon"/>
</package>
</packages>
<symbols>
<symbol name="PIN2">
<text x="-2.54" y="0" size="1.27" layer="94">PIN2</text>
<pin name="1" x="-1.27" y="-5.08" length="middle" rot="R90"/>
<pin name="2" x="1.27" y="-5.08" length="middle" rot="R90"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="REGISTER">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-5.08" width="0.254" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="-1.27" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="0" width="0.254" layer="94"/>
<pin name="P$1" x="0" y="5.08" length="middle" rot="R270"/>
<pin name="P$2" x="0" y="-10.16" length="middle" rot="R90"/>
</symbol>
<symbol name="PIN3">
<wire x1="-5.08" y1="0" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="0" width="0.254" layer="94"/>
<text x="-5.08" y="0" size="1.27" layer="94">PIN3</text>
<pin name="P$1" x="-2.54" y="-5.08" length="middle" rot="R90"/>
<pin name="P$2" x="0" y="-5.08" length="middle" rot="R90"/>
<pin name="P$3" x="2.54" y="-5.08" length="middle" rot="R90"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="CAPACITOR">
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<pin name="P$1" x="0" y="6.35" length="middle" rot="R270"/>
<pin name="P$2" x="0" y="-6.35" length="middle" rot="R90"/>
</symbol>
<symbol name="DIORDE">
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<pin name="A" x="-6.35" y="0" length="middle"/>
<pin name="C" x="5.08" y="0" length="middle" rot="R180"/>
</symbol>
<symbol name="RESISTOR_VALIABLE">
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-0.762" y2="-2.794" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="0.762" y2="-2.794" width="0.254" layer="94"/>
<pin name="A" x="-7.62" y="0" length="middle"/>
<pin name="B" x="7.62" y="0" length="middle" rot="R180"/>
<pin name="M" x="0" y="-7.62" length="middle" rot="R90"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.254" layer="94"/>
</symbol>
<symbol name="ARDUINO_PRO_MINI">
<wire x1="0" y1="-21.59" x2="16.51" y2="-21.59" width="0.254" layer="94"/>
<wire x1="16.51" y1="-21.59" x2="16.51" y2="31.75" width="0.254" layer="94"/>
<wire x1="16.51" y1="31.75" x2="0" y2="31.75" width="0.254" layer="94"/>
<pin name="TXO0" x="21.59" y="17.78" length="middle" rot="R180"/>
<pin name="RXI0" x="21.59" y="15.24" length="middle" rot="R180"/>
<pin name="RST0" x="21.59" y="12.7" length="middle" rot="R180"/>
<pin name="GND0" x="21.59" y="22.86" length="middle" rot="R180"/>
<pin name="2" x="-5.08" y="30.48" length="middle"/>
<pin name="3" x="-5.08" y="27.94" length="middle"/>
<pin name="4" x="-5.08" y="25.4" length="middle"/>
<pin name="5" x="-5.08" y="22.86" length="middle"/>
<pin name="6" x="-5.08" y="20.32" length="middle"/>
<pin name="7" x="-5.08" y="17.78" length="middle"/>
<pin name="8" x="-5.08" y="15.24" length="middle"/>
<pin name="9" x="-5.08" y="12.7" length="middle"/>
<pin name="10" x="-5.08" y="10.16" length="middle"/>
<pin name="11" x="-5.08" y="7.62" length="middle"/>
<pin name="12" x="-5.08" y="5.08" length="middle"/>
<pin name="13" x="-5.08" y="2.54" length="middle"/>
<pin name="A0" x="-5.08" y="0" length="middle"/>
<pin name="A1" x="-5.08" y="-2.54" length="middle"/>
<pin name="A2" x="-5.08" y="-5.08" length="middle"/>
<pin name="A3" x="-5.08" y="-7.62" length="middle"/>
<pin name="VCC0" x="21.59" y="25.4" length="middle" rot="R180"/>
<pin name="RAW" x="21.59" y="27.94" length="middle" rot="R180"/>
<wire x1="0" y1="31.75" x2="0" y2="-21.59" width="0.254" layer="94"/>
<pin name="RST1" x="21.59" y="10.16" length="middle" rot="R180"/>
<pin name="GND1" x="21.59" y="20.32" length="middle" rot="R180"/>
<pin name="A4" x="-5.08" y="-17.78" length="middle"/>
<pin name="A5" x="-5.08" y="-20.32" length="middle"/>
<pin name="A6" x="-5.08" y="-12.7" length="middle"/>
<pin name="A7" x="-5.08" y="-15.24" length="middle"/>
<pin name="BLK" x="21.59" y="-2.54" length="middle" rot="R180"/>
<pin name="GND2" x="21.59" y="-5.08" length="middle" rot="R180"/>
<pin name="VCC1" x="21.59" y="-7.62" length="middle" rot="R180"/>
<pin name="RXI1" x="21.59" y="-10.16" length="middle" rot="R180"/>
<pin name="TXO1" x="21.59" y="-12.7" length="middle" rot="R180"/>
<pin name="GRN" x="21.59" y="-15.24" length="middle" rot="R180"/>
</symbol>
<symbol name="GND">
<wire x1="-1.5875" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-0.9525" y1="-0.635" x2="0.635" y2="-0.635" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-1.27" x2="0.3175" y2="-1.27" width="0.254" layer="94"/>
<pin name="GND" x="0" y="5.08" length="middle" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC">
<wire x1="0" y1="1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="1.27" width="0.254" layer="94"/>
<pin name="VCC" x="0" y="-5.08" length="middle" direction="sup" rot="R90"/>
</symbol>
<symbol name="PIN_4_1">
<pin name="1" x="0" y="-5.08" length="middle" rot="R90"/>
<pin name="2" x="2.54" y="-5.08" length="middle" rot="R90"/>
<pin name="3" x="5.08" y="-5.08" length="middle" rot="R90"/>
<pin name="4" x="7.62" y="-5.08" length="middle" rot="R90"/>
<wire x1="0" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="POWER">
<pin name="P$1" x="0" y="-5.08" length="middle" direction="sup" rot="R90"/>
<wire x1="1.27" y1="0" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<text x="1.27" y="-2.54" size="1.778" layer="94">Power</text>
</symbol>
<symbol name="TERMINAL">
<wire x1="0" y1="1.27" x2="5.08" y2="1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="6.35" y2="0" width="0.254" layer="94"/>
<wire x1="6.35" y1="0" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="-1.27" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="PIN6">
<wire x1="-8.89" y1="0" x2="-8.89" y2="2.54" width="0.254" layer="94"/>
<wire x1="-8.89" y1="2.54" x2="6.35" y2="2.54" width="0.254" layer="94"/>
<wire x1="6.35" y1="2.54" x2="6.35" y2="0" width="0.254" layer="94"/>
<wire x1="6.35" y1="0" x2="-8.89" y2="0" width="0.254" layer="94"/>
<text x="-8.89" y="0" size="1.27" layer="94">PIN6</text>
<pin name="1" x="-7.62" y="-5.08" length="middle" rot="R90"/>
<pin name="2" x="-5.08" y="-5.08" length="middle" rot="R90"/>
<pin name="3" x="-2.54" y="-5.08" length="middle" rot="R90"/>
<pin name="4" x="0" y="-5.08" length="middle" rot="R90"/>
<pin name="5" x="2.54" y="-5.08" length="middle" rot="R90"/>
<pin name="6" x="5.08" y="-5.08" length="middle" rot="R90"/>
</symbol>
<symbol name="TRANSISTOR_PNP">
<wire x1="0" y1="2.54" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0.762" y2="1.778" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.524" y2="0.508" width="0.254" layer="94"/>
<pin name="B" x="-5.08" y="0" length="middle"/>
<pin name="E" x="2.54" y="7.62" length="middle" rot="R270"/>
<pin name="C" x="2.54" y="-7.62" length="middle" rot="R90"/>
</symbol>
<symbol name="DIP8">
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-5.08" x2="3.81" y2="-5.08" width="0.254" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.254" layer="94"/>
<wire x1="3.81" y1="5.08" x2="-3.81" y2="5.08" width="0.254" layer="94"/>
<pin name="2" x="-8.89" y="1.27" length="middle"/>
<pin name="1" x="-8.89" y="3.81" length="middle"/>
<pin name="3" x="-8.89" y="-1.27" length="middle"/>
<pin name="4" x="-8.89" y="-3.81" length="middle"/>
<pin name="5" x="8.89" y="-3.81" length="middle" rot="R180"/>
<pin name="6" x="8.89" y="-1.27" length="middle" rot="R180"/>
<pin name="7" x="8.89" y="1.27" length="middle" rot="R180"/>
<pin name="8" x="8.89" y="3.81" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIN2">
<gates>
<gate name="G$1" symbol="PIN2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PIN2">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN3">
<gates>
<gate name="G$1" symbol="PIN3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PIN3">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
<connect gate="G$1" pin="P$3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAPACITOR">
<gates>
<gate name="G$1" symbol="CAPACITOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPACITOR">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="REGISTER">
<gates>
<gate name="G$1" symbol="REGISTER" x="0" y="0"/>
</gates>
<devices>
<device name="" package="REGISTER">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DIORDE">
<gates>
<gate name="G$1" symbol="DIORDE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIORDE">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR_VALIABLE">
<gates>
<gate name="G$1" symbol="RESISTOR_VALIABLE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESISTOR_VALIABLE">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="M" pad="M"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ARDUINO_PRO_MINI">
<gates>
<gate name="G$1" symbol="ARDUINO_PRO_MINI" x="-10.16" y="-15.24"/>
</gates>
<devices>
<device name="" package="ARDUINO_PRO_MINI">
<connects>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="BLK" pad="BLK"/>
<connect gate="G$1" pin="GND0" pad="GND0"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
<connect gate="G$1" pin="GRN" pad="GRN"/>
<connect gate="G$1" pin="RAW" pad="RAW"/>
<connect gate="G$1" pin="RST0" pad="RST0"/>
<connect gate="G$1" pin="RST1" pad="RST1"/>
<connect gate="G$1" pin="RXI0" pad="RXI0"/>
<connect gate="G$1" pin="RXI1" pad="RXI1"/>
<connect gate="G$1" pin="TXO0" pad="TXO0"/>
<connect gate="G$1" pin="TXO1" pad="TXO1"/>
<connect gate="G$1" pin="VCC0" pad="VCC0"/>
<connect gate="G$1" pin="VCC1" pad="VCC1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND">
<gates>
<gate name="G$1" symbol="GND" x="-2.54" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC">
<gates>
<gate name="G$1" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN_4_1">
<gates>
<gate name="G$1" symbol="PIN_4_1" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="PIN_4_1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="POWER">
<gates>
<gate name="G$1" symbol="POWER" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TERMINAL">
<gates>
<gate name="G$1" symbol="TERMINAL" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN6">
<gates>
<gate name="G$1" symbol="PIN6" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PIN6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TRANSISTOR_PNP">
<gates>
<gate name="G$1" symbol="TRANSISTOR_PNP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TRANSISTOR">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DIP8">
<gates>
<gate name="G$1" symbol="DIP8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP8">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$4" library="mylib" deviceset="PIN2" device=""/>
<part name="U$9" library="mylib" deviceset="PIN3" device=""/>
<part name="U$8" library="mylib" deviceset="CAPACITOR" device=""/>
<part name="U$14" library="mylib" deviceset="REGISTER" device=""/>
<part name="U$17" library="mylib" deviceset="DIORDE" device=""/>
<part name="U$15" library="mylib" deviceset="RESISTOR_VALIABLE" device=""/>
<part name="U$1" library="mylib" deviceset="ARDUINO_PRO_MINI" device=""/>
<part name="U$16" library="mylib" deviceset="GND" device=""/>
<part name="U$18" library="mylib" deviceset="GND" device=""/>
<part name="U$19" library="mylib" deviceset="VCC" device=""/>
<part name="U$22" library="mylib" deviceset="VCC" device=""/>
<part name="U$23" library="mylib" deviceset="GND" device=""/>
<part name="U$24" library="mylib" deviceset="GND" device=""/>
<part name="U$25" library="mylib" deviceset="GND" device=""/>
<part name="U$27" library="mylib" deviceset="GND" device=""/>
<part name="U$5" library="mylib" deviceset="PIN_4_1" device=""/>
<part name="U$10" library="mylib" deviceset="POWER" device=""/>
<part name="U$20" library="mylib" deviceset="POWER" device=""/>
<part name="U$12" library="mylib" deviceset="POWER" device=""/>
<part name="U$11" library="mylib" deviceset="TERMINAL" device=""/>
<part name="U$13" library="mylib" deviceset="TERMINAL" device=""/>
<part name="U$29" library="mylib" deviceset="TERMINAL" device=""/>
<part name="U$30" library="mylib" deviceset="TERMINAL" device=""/>
<part name="U$31" library="mylib" deviceset="TERMINAL" device=""/>
<part name="U$32" library="mylib" deviceset="TERMINAL" device=""/>
<part name="U$34" library="mylib" deviceset="PIN6" device=""/>
<part name="U$36" library="mylib" deviceset="TERMINAL" device=""/>
<part name="U$7" library="mylib" deviceset="TRANSISTOR_PNP" device=""/>
<part name="U$37" library="mylib" deviceset="PIN2" device=""/>
<part name="U$6" library="mylib" deviceset="POWER" device=""/>
<part name="U$21" library="mylib" deviceset="DIP8" device=""/>
<part name="U$26" library="mylib" deviceset="DIP8" device=""/>
<part name="U$2" library="mylib" deviceset="PIN3" device=""/>
<part name="U$3" library="mylib" deviceset="TERMINAL" device=""/>
<part name="U$28" library="mylib" deviceset="TERMINAL" device=""/>
<part name="U$33" library="mylib" deviceset="GND" device=""/>
<part name="U$35" library="mylib" deviceset="POWER" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="154.94" y="-20.32" size="1.778" layer="91">servo</text>
</plain>
<instances>
<instance part="U$4" gate="G$1" x="58.42" y="30.48" rot="R90"/>
<instance part="U$9" gate="G$1" x="8.89" y="41.91"/>
<instance part="U$8" gate="G$1" x="69.85" y="30.48"/>
<instance part="U$14" gate="G$1" x="120.65" y="-12.7"/>
<instance part="U$17" gate="G$1" x="88.9" y="-31.75" rot="R90"/>
<instance part="U$15" gate="G$1" x="71.12" y="-16.51"/>
<instance part="U$1" gate="G$1" x="7.62" y="-5.08"/>
<instance part="U$16" gate="G$1" x="63.5" y="19.05"/>
<instance part="U$18" gate="G$1" x="43.18" y="10.16"/>
<instance part="U$19" gate="G$1" x="43.18" y="29.21"/>
<instance part="U$22" gate="G$1" x="16.51" y="41.91"/>
<instance part="U$23" gate="G$1" x="127" y="8.89"/>
<instance part="U$24" gate="G$1" x="167.64" y="8.89"/>
<instance part="U$25" gate="G$1" x="8.89" y="30.48"/>
<instance part="U$27" gate="G$1" x="88.9" y="-44.45"/>
<instance part="U$5" gate="G$1" x="189.23" y="30.48" rot="R270"/>
<instance part="U$10" gate="G$1" x="63.5" y="41.91"/>
<instance part="U$20" gate="G$1" x="34.29" y="29.21"/>
<instance part="U$12" gate="G$1" x="88.9" y="-2.54"/>
<instance part="U$11" gate="G$1" x="-10.16" y="17.78" rot="R180"/>
<instance part="U$13" gate="G$1" x="-10.16" y="22.86" rot="R180"/>
<instance part="U$29" gate="G$1" x="53.34" y="-16.51" rot="R180"/>
<instance part="U$30" gate="G$1" x="96.52" y="-25.4"/>
<instance part="U$31" gate="G$1" x="96.52" y="36.83" rot="R90"/>
<instance part="U$32" gate="G$1" x="137.16" y="36.83" rot="R90"/>
<instance part="U$34" gate="G$1" x="35.56" y="-15.24" rot="R270"/>
<instance part="U$36" gate="G$1" x="123.19" y="-38.1"/>
<instance part="U$7" gate="G$1" x="86.36" y="-16.51"/>
<instance part="U$37" gate="G$1" x="125.73" y="-27.94" rot="R270"/>
<instance part="U$6" gate="G$1" x="120.65" y="-1.27"/>
<instance part="U$21" gate="G$1" x="110.49" y="22.86"/>
<instance part="U$26" gate="G$1" x="151.13" y="22.86"/>
<instance part="U$2" gate="G$1" x="157.48" y="-10.16"/>
<instance part="U$3" gate="G$1" x="-10.16" y="20.32" rot="R180"/>
<instance part="U$28" gate="G$1" x="157.48" y="-38.1"/>
<instance part="U$33" gate="G$1" x="168.91" y="-29.21"/>
<instance part="U$35" gate="G$1" x="168.91" y="-1.27"/>
</instances>
<busses>
<bus name="B$[0..3]">
<segment>
<wire x1="129.54" y1="25.4" x2="129.54" y2="53.34" width="0.762" layer="92"/>
<wire x1="129.54" y1="53.34" x2="130.81" y2="54.61" width="0.762" layer="92"/>
<wire x1="130.81" y1="54.61" x2="168.91" y2="54.61" width="0.762" layer="92"/>
<wire x1="168.91" y1="54.61" x2="179.07" y2="54.61" width="0.762" layer="92"/>
<wire x1="179.07" y1="54.61" x2="180.34" y2="53.34" width="0.762" layer="92"/>
<wire x1="180.34" y1="53.34" x2="180.34" y2="24.13" width="0.762" layer="92"/>
<wire x1="170.18" y1="25.4" x2="170.18" y2="53.34" width="0.762" layer="92"/>
<wire x1="170.18" y1="53.34" x2="168.91" y2="54.61" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="MOTER_SIGNAL[0..3]">
<segment>
<wire x1="88.9" y1="17.78" x2="88.9" y2="49.53" width="0.762" layer="92"/>
<wire x1="88.9" y1="49.53" x2="87.63" y2="50.8" width="0.762" layer="92"/>
<wire x1="87.63" y1="50.8" x2="132.08" y2="50.8" width="0.762" layer="92"/>
<wire x1="132.08" y1="50.8" x2="133.35" y2="49.53" width="0.762" layer="92"/>
<wire x1="133.35" y1="49.53" x2="133.35" y2="16.51" width="0.762" layer="92"/>
<wire x1="87.63" y1="50.8" x2="-25.4" y2="50.8" width="0.762" layer="92"/>
<wire x1="-25.4" y1="50.8" x2="-26.67" y2="49.53" width="0.762" layer="92"/>
<wire x1="-26.67" y1="49.53" x2="-26.67" y2="8.89" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<pinref part="U$14" gate="G$1" pin="P$2"/>
<pinref part="U$37" gate="G$1" pin="1"/>
<wire x1="120.65" y1="-22.86" x2="120.65" y2="-26.67" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U$15" gate="G$1" pin="B"/>
<wire x1="78.74" y1="-16.51" x2="81.28" y2="-16.51" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="B"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="GND"/>
<pinref part="U$4" gate="G$1" pin="1"/>
<wire x1="63.5" y1="29.21" x2="63.5" y2="24.13" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="P$2"/>
<wire x1="69.85" y1="24.13" x2="63.5" y2="24.13" width="0.1524" layer="91"/>
<junction x="63.5" y="24.13"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND0"/>
<pinref part="U$18" gate="G$1" pin="GND"/>
<wire x1="29.21" y1="17.78" x2="43.18" y2="17.78" width="0.1524" layer="91"/>
<wire x1="43.18" y1="17.78" x2="43.18" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND1"/>
<wire x1="29.21" y1="15.24" x2="43.18" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="127" y1="26.67" x2="127" y2="21.59" width="0.1524" layer="91"/>
<wire x1="127" y1="21.59" x2="127" y2="13.97" width="0.1524" layer="91"/>
<wire x1="119.38" y1="26.67" x2="127" y2="26.67" width="0.1524" layer="91"/>
<wire x1="119.38" y1="21.59" x2="127" y2="21.59" width="0.1524" layer="91"/>
<junction x="127" y="21.59"/>
<pinref part="U$23" gate="G$1" pin="GND"/>
<pinref part="U$21" gate="G$1" pin="6"/>
<pinref part="U$21" gate="G$1" pin="8"/>
</segment>
<segment>
<wire x1="160.02" y1="26.67" x2="167.64" y2="26.67" width="0.1524" layer="91"/>
<wire x1="167.64" y1="26.67" x2="167.64" y2="21.59" width="0.1524" layer="91"/>
<wire x1="167.64" y1="21.59" x2="167.64" y2="13.97" width="0.1524" layer="91"/>
<junction x="167.64" y="21.59"/>
<wire x1="160.02" y1="21.59" x2="167.64" y2="21.59" width="0.1524" layer="91"/>
<pinref part="U$24" gate="G$1" pin="GND"/>
<pinref part="U$26" gate="G$1" pin="8"/>
<pinref part="U$26" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="P$2"/>
<pinref part="U$25" gate="G$1" pin="GND"/>
<wire x1="8.89" y1="36.83" x2="8.89" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$17" gate="G$1" pin="A"/>
<pinref part="U$27" gate="G$1" pin="GND"/>
<wire x1="88.9" y1="-38.1" x2="88.9" y2="-39.37" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="P$2"/>
<wire x1="168.91" y1="-20.32" x2="157.48" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-20.32" x2="157.48" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="U$33" gate="G$1" pin="GND"/>
<wire x1="168.91" y1="-20.32" x2="168.91" y2="-24.13" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VCC0"/>
<pinref part="U$19" gate="G$1" pin="VCC"/>
<wire x1="29.21" y1="20.32" x2="43.18" y2="20.32" width="0.1524" layer="91"/>
<wire x1="43.18" y1="20.32" x2="43.18" y2="24.13" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="P$3"/>
<pinref part="U$22" gate="G$1" pin="VCC"/>
<wire x1="11.43" y1="36.83" x2="16.51" y2="36.83" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B$0" class="0">
<segment>
<wire x1="129.54" y1="35.56" x2="128.27" y2="34.29" width="0.1524" layer="91"/>
<wire x1="128.27" y1="34.29" x2="99.06" y2="34.29" width="0.1524" layer="91"/>
<wire x1="99.06" y1="34.29" x2="99.06" y2="26.67" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="1"/>
<wire x1="101.6" y1="26.67" x2="99.06" y2="26.67" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="1"/>
<wire x1="180.34" y1="31.75" x2="181.61" y2="30.48" width="0.1524" layer="91"/>
<wire x1="181.61" y1="30.48" x2="184.15" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B$2" class="0">
<segment>
<wire x1="170.18" y1="34.29" x2="168.91" y2="33.02" width="0.1524" layer="91"/>
<wire x1="168.91" y1="33.02" x2="139.7" y2="33.02" width="0.1524" layer="91"/>
<wire x1="139.7" y1="33.02" x2="139.7" y2="26.67" width="0.1524" layer="91"/>
<pinref part="U$26" gate="G$1" pin="1"/>
<wire x1="139.7" y1="26.67" x2="142.24" y2="26.67" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="3"/>
<wire x1="180.34" y1="26.67" x2="181.61" y2="25.4" width="0.1524" layer="91"/>
<wire x1="181.61" y1="25.4" x2="184.15" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B$1" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="2"/>
<wire x1="180.34" y1="29.21" x2="181.61" y2="27.94" width="0.1524" layer="91"/>
<wire x1="181.61" y1="27.94" x2="184.15" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="129.54" y1="25.4" x2="128.27" y2="24.13" width="0.1524" layer="91"/>
<wire x1="128.27" y1="24.13" x2="119.38" y2="24.13" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="7"/>
</segment>
</net>
<net name="B$3" class="0">
<segment>
<wire x1="170.18" y1="25.4" x2="168.91" y2="24.13" width="0.1524" layer="91"/>
<wire x1="168.91" y1="24.13" x2="160.02" y2="24.13" width="0.1524" layer="91"/>
<pinref part="U$26" gate="G$1" pin="7"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="4"/>
<wire x1="180.34" y1="24.13" x2="181.61" y2="22.86" width="0.1524" layer="91"/>
<wire x1="181.61" y1="22.86" x2="184.15" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P$1" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="P$1"/>
<wire x1="69.85" y1="36.83" x2="63.5" y2="36.83" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="P$1"/>
<pinref part="U$4" gate="G$1" pin="2"/>
<wire x1="63.5" y1="31.75" x2="63.5" y2="36.83" width="0.1524" layer="91"/>
<junction x="63.5" y="36.83"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="RAW"/>
<pinref part="U$20" gate="G$1" pin="P$1"/>
<wire x1="29.21" y1="22.86" x2="34.29" y2="22.86" width="0.1524" layer="91"/>
<wire x1="34.29" y1="22.86" x2="34.29" y2="24.13" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$12" gate="G$1" pin="P$1"/>
<pinref part="U$7" gate="G$1" pin="E"/>
<wire x1="88.9" y1="-8.89" x2="88.9" y2="-7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="P$1"/>
<pinref part="U$14" gate="G$1" pin="P$1"/>
<wire x1="120.65" y1="-6.35" x2="120.65" y2="-7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="P$3"/>
<wire x1="160.02" y1="-15.24" x2="168.91" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="168.91" y1="-15.24" x2="168.91" y2="-6.35" width="0.1524" layer="91"/>
<pinref part="U$35" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="P$1"/>
<wire x1="6.35" y1="36.83" x2="-21.59" y2="36.83" width="0.1524" layer="91"/>
<wire x1="-21.59" y1="36.83" x2="-21.59" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="-21.59" y1="25.4" x2="2.54" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MOTER_SIGNAL0" class="0">
<segment>
<wire x1="2.54" y1="15.24" x2="-25.4" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="15.24" x2="-26.67" y2="16.51" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="6"/>
</segment>
<segment>
<wire x1="88.9" y1="21.59" x2="91.44" y2="19.05" width="0.1524" layer="91"/>
<wire x1="91.44" y1="19.05" x2="101.6" y2="19.05" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="4"/>
</segment>
</net>
<net name="MOTER_SIGNAL2" class="0">
<segment>
<wire x1="142.24" y1="19.05" x2="134.62" y2="19.05" width="0.1524" layer="91"/>
<wire x1="133.35" y1="20.32" x2="134.62" y2="19.05" width="0.1524" layer="91"/>
<pinref part="U$26" gate="G$1" pin="4"/>
</segment>
<segment>
<wire x1="2.54" y1="10.16" x2="-25.4" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="10.16" x2="-26.67" y2="11.43" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="8"/>
</segment>
</net>
<net name="MOTER_SIGNAL3" class="0">
<segment>
<wire x1="162.56" y1="19.05" x2="162.56" y2="15.24" width="0.1524" layer="91"/>
<wire x1="162.56" y1="15.24" x2="134.62" y2="15.24" width="0.1524" layer="91"/>
<wire x1="133.35" y1="16.51" x2="134.62" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U$26" gate="G$1" pin="5"/>
<wire x1="160.02" y1="19.05" x2="162.56" y2="19.05" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="2.54" y1="7.62" x2="-25.4" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="7.62" x2="-26.67" y2="8.89" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="9"/>
</segment>
</net>
<net name="MOTER_SIGNAL1" class="0">
<segment>
<wire x1="121.92" y1="19.05" x2="121.92" y2="15.24" width="0.1524" layer="91"/>
<wire x1="121.92" y1="15.24" x2="91.44" y2="15.24" width="0.1524" layer="91"/>
<wire x1="88.9" y1="17.78" x2="91.44" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="5"/>
<wire x1="119.38" y1="19.05" x2="121.92" y2="19.05" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="2.54" y1="12.7" x2="-25.4" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="12.7" x2="-26.67" y2="13.97" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="7"/>
</segment>
</net>
<net name="MOTOR_TRG" class="0">
<segment>
<pinref part="U$15" gate="G$1" pin="M"/>
<pinref part="U$15" gate="G$1" pin="A"/>
<wire x1="71.12" y1="-24.13" x2="60.96" y2="-24.13" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-24.13" x2="60.96" y2="-16.51" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-16.51" x2="60.96" y2="-16.51" width="0.1524" layer="91"/>
<label x="44.45" y="-13.97" size="1.778" layer="95"/>
<junction x="60.96" y="-16.51"/>
<wire x1="60.96" y1="-16.51" x2="55.88" y2="-16.51" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="5"/>
<wire x1="2.54" y1="17.78" x2="-7.62" y2="17.78" width="0.1524" layer="91"/>
<label x="-22.86" y="17.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOTOR" class="0">
<segment>
<label x="95.25" y="-24.13" size="1.778" layer="95"/>
<pinref part="U$17" gate="G$1" pin="C"/>
<wire x1="88.9" y1="-26.67" x2="88.9" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-25.4" x2="88.9" y2="-24.13" width="0.1524" layer="91"/>
<junction x="88.9" y="-25.4"/>
<wire x1="88.9" y1="-25.4" x2="93.98" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="C"/>
</segment>
<segment>
<wire x1="96.52" y1="21.59" x2="96.52" y2="24.13" width="0.1524" layer="91"/>
<wire x1="96.52" y1="24.13" x2="96.52" y2="34.29" width="0.1524" layer="91"/>
<label x="99.06" y="41.91" size="1.778" layer="95"/>
<junction x="96.52" y="24.13"/>
<pinref part="U$21" gate="G$1" pin="3"/>
<wire x1="101.6" y1="21.59" x2="96.52" y2="21.59" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="2"/>
<wire x1="101.6" y1="24.13" x2="96.52" y2="24.13" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="137.16" y1="21.59" x2="137.16" y2="24.13" width="0.1524" layer="91"/>
<wire x1="137.16" y1="24.13" x2="137.16" y2="34.29" width="0.1524" layer="91"/>
<label x="139.7" y="41.91" size="1.778" layer="95"/>
<junction x="137.16" y="24.13"/>
<pinref part="U$26" gate="G$1" pin="3"/>
<wire x1="137.16" y1="21.59" x2="142.24" y2="21.59" width="0.1524" layer="91"/>
<pinref part="U$26" gate="G$1" pin="2"/>
<wire x1="137.16" y1="24.13" x2="142.24" y2="24.13" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LED_TRG" class="0">
<segment>
<label x="130.81" y="-39.37" size="1.778" layer="95"/>
<pinref part="U$37" gate="G$1" pin="2"/>
<wire x1="120.65" y1="-29.21" x2="120.65" y2="-38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="3"/>
<wire x1="2.54" y1="22.86" x2="-7.62" y2="22.86" width="0.1524" layer="91"/>
<label x="-22.86" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GRN"/>
<pinref part="U$34" gate="G$1" pin="6"/>
<wire x1="29.21" y1="-20.32" x2="30.48" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="TXO1"/>
<pinref part="U$34" gate="G$1" pin="5"/>
<wire x1="29.21" y1="-17.78" x2="30.48" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="RXI1"/>
<pinref part="U$34" gate="G$1" pin="4"/>
<wire x1="29.21" y1="-15.24" x2="30.48" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VCC1"/>
<pinref part="U$34" gate="G$1" pin="3"/>
<wire x1="29.21" y1="-12.7" x2="30.48" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND2"/>
<pinref part="U$34" gate="G$1" pin="2"/>
<wire x1="29.21" y1="-10.16" x2="30.48" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="BLK"/>
<pinref part="U$34" gate="G$1" pin="1"/>
<wire x1="29.21" y1="-7.62" x2="30.48" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="A5"/>
<wire x1="0" y1="-25.4" x2="2.54" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SERVO" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="P$1"/>
<wire x1="154.94" y1="-38.1" x2="154.94" y2="-15.24" width="0.1524" layer="91"/>
<label x="158.75" y="-41.91" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="4"/>
<wire x1="2.54" y1="20.32" x2="-7.62" y2="20.32" width="0.1524" layer="91"/>
<label x="-22.86" y="20.32" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
