import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure ReceptorLigandBindingPackage where
  receptorType : Type u
  ligandType : Type v
  bindingAffinity : Prop
  dissociationConstant : Prop
  signalInitiation : Prop
  receptorDimerization : Prop

structure ReceptorLigandBindingEvidence (R : ReceptorLigandBindingPackage) where
  bindingAffinityClosed : R.bindingAffinity
  dissociationConstantClosed : R.dissociationConstant
  signalInitiationClosed : R.signalInitiation
  receptorDimerizationClosed : R.receptorDimerization

def ReceptorLigandBindingClosed (R : ReceptorLigandBindingPackage) : Prop :=
  R.bindingAffinity ∧ R.dissociationConstant ∧ R.signalInitiation ∧ R.receptorDimerization

theorem receptor_ligand_binding_closed_from_evidence
    (R : ReceptorLigandBindingPackage) (E : ReceptorLigandBindingEvidence R) :
    ReceptorLigandBindingClosed R := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.dissociationConstantClosed
      (And.intro E.signalInitiationClosed E.receptorDimerizationClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse