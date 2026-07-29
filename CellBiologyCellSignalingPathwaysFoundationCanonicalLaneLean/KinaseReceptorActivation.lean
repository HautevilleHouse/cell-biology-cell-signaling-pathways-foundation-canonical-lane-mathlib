import CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Ligand-Receptor Binding and Kinase Activation Package
-/

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure LigandReceptorBindingPackage where
  ligandConcentration : ℝ
  receptorAffinity : ℝ
  bindingRate : ℝ
  dissociationRate : ℝ
  equilibriumBindingConstant : ℝ

structure LigandReceptorBindingEvidence (L : LigandReceptorBindingPackage) where
  ligandConcentrationClosed : L.ligandConcentration > 0
  receptorAffinityClosed : L.receptorAffinity > 0
  bindingRateClosed : L.bindingRate > 0
  dissociationRateClosed : L.dissociationRate > 0
  equilibriumBindingConstantClosed : L.equilibriumBindingConstant = L.bindingRate / L.dissociationRate

def LigandReceptorBindingClosed (L : LigandReceptorBindingPackage) : Prop :=
  L.ligandConcentration > 0 ∧ L.receptorAffinity > 0 ∧
  L.bindingRate > 0 ∧ L.dissociationRate > 0 ∧
  L.equilibriumBindingConstant = L.bindingRate / L.dissociationRate

theorem ligand_receptor_binding_closed_from_evidence
    (L : LigandReceptorBindingPackage) (E : LigandReceptorBindingEvidence L) :
    LigandReceptorBindingClosed L := by
  exact And.intro E.ligandConcentrationClosed
    (And.intro E.receptorAffinityClosed
      (And.intro E.bindingRateClosed
        (And.intro E.dissociationRateClosed E.equilibriumBindingConstantClosed)))

structure KinaseActivationPackage (L : LigandReceptorBindingPackage) where
  receptorDimerization : Prop
  autophosphorylation : Prop
  kinaseDomainActive : Prop
  downstreamSignalingInitiated : Prop

structure KinaseActivationEvidence {L : LigandReceptorBindingPackage}
    (K : KinaseActivationPackage L) where
  receptorDimerizationClosed : K.receptorDimerization
  autophosphorylationClosed : K.autophosphorylation
  kinaseDomainActiveClosed : K.kinaseDomainActive
  downstreamSignalingInitiatedClosed : K.downstreamSignalingInitiated

def KinaseActivationClosed {L : LigandReceptorBindingPackage}
    (K : KinaseActivationPackage L) : Prop :=
  K.receptorDimerization ∧ K.autophosphorylation ∧
  K.kinaseDomainActive ∧ K.downstreamSignalingInitiated

theorem kinase_activation_closed_from_evidence
    {L : LigandReceptorBindingPackage} (K : KinaseActivationPackage L)
    (E : KinaseActivationEvidence K) : KinaseActivationClosed K := by
  exact And.intro E.receptorDimerizationClosed
    (And.intro E.autophosphorylationClosed
      (And.intro E.kinaseDomainActiveClosed E.downstreamSignalingInitiatedClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse
