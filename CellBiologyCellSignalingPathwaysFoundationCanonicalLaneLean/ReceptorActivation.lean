import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure ReceptorActivationPackage where
  ligandBinding : Prop
  conformationalChange : Prop
  dimerization : Prop
  kinaseRecruitment : Prop

structure ReceptorActivationEvidence (R : ReceptorActivationPackage) where
  ligandBindingClosed : R.ligandBinding
  conformationalChangeClosed : R.conformationalChange
  dimerizationClosed : R.dimerization
  kinaseRecruitmentClosed : R.kinaseRecruitment

def ReceptorActivationClosed (R : ReceptorActivationPackage) : Prop :=
  R.ligandBinding ∧ R.conformationalChange ∧ R.dimerization ∧ R.kinaseRecruitment

theorem receptor_activation_closed_from_evidence (R : ReceptorActivationPackage) (E : ReceptorActivationEvidence R) : ReceptorActivationClosed R := by
  exact And.intro E.ligandBindingClosed (And.intro E.conformationalChangeClosed (And.intro E.dimerizationClosed E.kinaseRecruitmentClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse