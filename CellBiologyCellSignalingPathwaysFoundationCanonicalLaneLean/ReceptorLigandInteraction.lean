import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure ReceptorLigandInteractionPackage where
  ligandBindingAffinity : Prop
  receptorActivationConformationalChange : Prop
  signalAmplification : Prop
  specificityEncoding : Prop

structure ReceptorLigandInteractionEvidence (R : ReceptorLigandInteractionPackage) where
  ligandBindingAffinityClosed : R.ligandBindingAffinity
  receptorActivationConformationalChangeClosed : R.receptorActivationConformationalChange
  signalAmplificationClosed : R.signalAmplification
  specificityEncodingClosed : R.specificityEncoding

def ReceptorLigandInteractionClosed (R : ReceptorLigandInteractionPackage) : Prop :=
  R.ligandBindingAffinity ∧ R.receptorActivationConformationalChange ∧
  R.signalAmplification ∧ R.specificityEncoding

theorem receptor_ligand_interaction_closed_from_evidence
    (R : ReceptorLigandInteractionPackage) (E : ReceptorLigandInteractionEvidence R) :
    ReceptorLigandInteractionClosed R := by
  exact And.intro E.ligandBindingAffinityClosed
    (And.intro E.receptorActivationConformationalChangeClosed
      (And.intro E.signalAmplificationClosed E.specificityEncodingClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse