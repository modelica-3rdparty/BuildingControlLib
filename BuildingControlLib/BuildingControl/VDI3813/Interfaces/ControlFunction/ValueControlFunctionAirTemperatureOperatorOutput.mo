within BuildingControlLib.BuildingControl.VDI3813.Interfaces.ControlFunction;
connector ValueControlFunctionAirTemperatureOperatorOutput
  "Output connector of ValueControlFunctionOperator"
 extends Partial.PartialOutput;
  output
    BuildingControlLib.BuildingControl.VDI3813.Types.ControlFunction.ValueControlFunctionAirTemperatureOperator
    valueControlFunctionAirTemperatureOperator;
end ValueControlFunctionAirTemperatureOperatorOutput;
