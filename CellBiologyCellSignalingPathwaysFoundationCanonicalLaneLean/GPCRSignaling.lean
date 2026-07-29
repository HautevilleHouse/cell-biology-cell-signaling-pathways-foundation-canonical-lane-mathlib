import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure GPCRSignalPackage where
  ligandBinding : Prop
  conformationalChange : Prop
  gProteinActivation : Prop
  secondMessengerProduction : Prop
  effectorActivation : Prop
  cellularResponse : Prop

structure GPCRSignalEvidence (G : GPCRSignalPackage) where
  ligandBindingClosed : G.ligandBinding
  conformationalChangeClosed : G.conformationalChange
  gProteinActivationClosed : G.gProteinActivation
  secondMessengerProductionClosed : G.secondMessengerProduction
  effectorActivationClosed : G.effectorActivation
  cellularResponseClosed : G.cellularResponse

def GPCRSignalClosed (G : GPCRSignalPackage) : Prop :=
  G.ligandBinding ∧ G.conformationalChange ∧
  G.gProteinActivation ∧ G.secondMessengerProduction ∧
  G.effectorActivation ∧ G.cellularResponse

theorem gpcr_signal_closed_from_evidence (G : GPCRSignalPackage)
    (E : GPCRSignalEvidence G) : GPCRSignalClosed G :=
  And.intro E.ligandBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.gProteinActivationClosed
        (And.intro E.secondMessengerProductionClosed
          (And.intro E.effectorActivationClosed E.cellularResponseClosed))))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse