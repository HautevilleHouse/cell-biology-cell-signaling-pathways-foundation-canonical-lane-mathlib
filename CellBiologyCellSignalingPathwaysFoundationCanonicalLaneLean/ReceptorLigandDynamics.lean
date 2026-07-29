import CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean.CellSignalingAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure ReceptorLigandPackage where
  ligandConcentration : ℝ
  receptorConcentration : ℝ
  bindingAffinity : ℝ
  boundComplexConcentration : ℝ
  downstreamEffectPropagated : Prop

structure ReceptorLigandEvidence (R : ReceptorLigandPackage) where
  bindingAffinityPositive : R.bindingAffinity > 0
  downstreamEffectPropagatedClosed : R.downstreamEffectPropagated

def ReceptorLigandClosed (R : ReceptorLigandPackage) : Prop :=
  R.bindingAffinity > 0 ∧ R.downstreamEffectPropagated

theorem receptor_ligand_closed_from_evidence (R : ReceptorLigandPackage)
    (E : ReceptorLigandEvidence R) : ReceptorLigandClosed R := by
  exact And.intro E.bindingAffinityPositive E.downstreamEffectPropagatedClosed

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse