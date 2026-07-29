import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure GProteinCoupledReceptorPackage where
  receptorActivation : Prop
  gProteinBinding : Prop
  gtpExchange : Prop
  effectorActivation : Prop

structure GProteinCoupledReceptorEvidence (R : GProteinCoupledReceptorPackage) where
  receptorActivationClosed : R.receptorActivation
  gProteinBindingClosed : R.gProteinBinding
  gtpExchangeClosed : R.gtpExchange
  effectorActivationClosed : R.effectorActivation

def GProteinCoupledReceptorClosed (R : GProteinCoupledReceptorPackage) : Prop :=
  R.receptorActivation ∧ R.gProteinBinding ∧ R.gtpExchange ∧ R.effectorActivation

theorem g_protein_coupled_receptor_closed_from_evidence
    (R : GProteinCoupledReceptorPackage) (E : GProteinCoupledReceptorEvidence R) :
    GProteinCoupledReceptorClosed R := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.gProteinBindingClosed
      (And.intro E.gtpExchangeClosed E.effectorActivationClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse