within BuildingControlLib.BuildingControl.VDI3813.Interfaces.ActuatorSignal;
connector CommandActuatorSignalDamperPositionOutput
  "Output connector of CommandActuatorSignalDamperPosition"
 extends Partial.PartialOutput;
 output
    BuildingControlLib.BuildingControl.VDI3813.Types.ActuatorSignal.CommandActuatorSignalDamperPosition
 commandActuatorSignalDamperPosition;
end CommandActuatorSignalDamperPositionOutput;
