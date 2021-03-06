within BuildingControlLib.BuildingControl.VDI3813.UsersGuide.Convention;
class DocumentationTemplate
  "Template documentation of control functions implementation"
extends Modelica.Icons.Information;
annotation (preferredView="info",
Documentation(info="<html>
<h4><span style=\"color:#008000\">Overview</span></h4>
<p>Block that implements function &QUOT;My Function Name&QUOT; from VDI 3813 [1]. </p>
<h4><span style=\"color:#008000\">Functional Description</span></h4>
<p>Here a brief description of the functional characteristic of the function implemented should be provided aligned with descriptions from the standard.</p>
<h4><span style=\"color:#008000\">Input Variables</span></h4>
<p>The following table presents the input variables of the function as specified in the standard. </p>
<table cellspacing=\"0\" cellpadding=\"2\" border=\"1\"><tr>
<td><p align=\"center\"><h4>Acronym</h4></p></td>
<td><p align=\"center\"><h4>Datatype VDI3813</h4></p></td>
<td><p align=\"center\"><h4>Semantic data type</h4></p></td>
<td><p align=\"center\"><h4>Signal flow direction</h4></p></td>
<td><p align=\"center\"><h4>Description</h4></p></td>
</tr>
<tr>
<td valign=\"top\"><p>T_XXX</p></td>
<td valign=\"top\"><p>Temp</p></td>
<td valign=\"top\"><p><a href=\"modelica://BuildingControlLib.BuildingControl.VDI3813.Types.SetpointTemperatureOperator\">SetpointTemperatureOperator</a> </p></td>
<td valign=\"top\"><p>Input</p></td>
<td valign=\"top\"><p>Provide description</p></td>
</tr>
<tr>
<td valign=\"top\"><p>S_XXX</p></td>
<td valign=\"top\"><p>Jal</p></td>
<td valign=\"top\"><p><a href=\"modelica://BuildingControlLib.BuildingControl.VDI3813.Types.SetpointTemperatureUser\">SetpointTemperatureUser</a></p></td>
<td valign=\"top\"><p>Input</p></td>
<td valign=\"top\"><p>Provide description</p></td>
</tr>
<tr>
<td valign=\"top\"><p>T_XXX</p></td>
<td valign=\"top\"><p>xxx</p></td>
<td valign=\"top\"><p><a href=\"modelica://BuildingControlLib.BuildingControl.VDI3813.Types.ValueTemperatureOutdoor\">ValueTemperatureOutdoor</a></p></td>
<td valign=\"top\"><p>Input</p></td>
<td valign=\"top\"><p>Provide description</p></td>
</tr>
</table>
<p><br><h4><span style=\"color:#008000\">Output Variables</span></h4></p>
<p>The following table presents the output variables of the function as specified in the standard.</p>
<table cellspacing=\"0\" cellpadding=\"2\" border=\"1\"><tr>
<td><p align=\"center\"><h4>Acronym</h4></p></td>
<td><p align=\"center\"><h4>Datatype VDI3813</h4></p></td>
<td><p align=\"center\"><h4>Semantic data type</h4></p></td>
<td><p align=\"center\"><h4>Signal flow direction</h4></p></td>
<td><p align=\"center\"><h4>Description</h4></p></td>
</tr>
<tr>
<td valign=\"top\"><p>T_SETPS</p></td>
<td valign=\"top\"><p>Temp[x]</p></td>
<td valign=\"top\"><p><a href=\"modelica://BuildingControlLib.BuildingControl.VDI3813.Types.SetpointHeatCoolEnergyModes\">SetpointSetpointHeatCoolEnergyModes</a> </p></td>
<td valign=\"top\"><p>Output</p></td>
<td valign=\"top\"><p>Provide description</p></td>
</tr>
</table>
<p><br><b><font style=\"color: #008000; \">Parameter</font></b> </p>
<p>The following table presents the parameter of the function as specified in the standard.</p>
<table cellspacing=\"0\" cellpadding=\"2\" border=\"1\"><tr>
<td><p align=\"center\"><h4>Acronym</h4></p></td>
<td><p align=\"center\"><h4>Description</h4></p></td>
</tr>
<tr>
<td valign=\"top\"><p>PAR_XXX</p></td>
<td valign=\"top\"><p>Provide description</p></td>
</tr>
<tr>
<td valign=\"top\"><p>PAR_XXX</p></td>
<td valign=\"top\"><p>Provide description</p></td>
</tr>
</table>
<p><br><b><font style=\"color: #008000; \">References</font></b> </p>
<table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
<td><p>[1]</p></td>
<td><p>VDI 3813-2 - Geb&auml;udeautomation (GA) - Blatt 2: Raumautomationsfunktionen (RA-Funktionen). Beuth Verlag GmbH, Berlin, 2011. </p></td>
</tr>
</table>
</html>",
        revisions="<html>
<ul>
<li>March 07, 2017&nbsp; by Georg Ferdinand Schneider &amp; Georg Ambrosius Pe&szlig;ler:<br>Implemented.</li>
</ul>
</html>"));
end DocumentationTemplate;
