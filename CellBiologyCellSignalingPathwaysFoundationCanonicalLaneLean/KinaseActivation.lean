import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure KinaseActivationPackage where
  kinaseIdentity : Type u
  atpBinding : Prop
  conformationalChange : Prop
  catalyticActivity : Prop
  substratePhosphorylation : Prop

structure KinaseActivationEvidence (K : KinaseActivationPackage) where
  atpBindingClosed : K.atpBinding
  conformationalChangeClosed : K.conformationalChange
  catalyticActivityClosed : K.catalyticActivity
  substratePhosphorylationClosed : K.substratePhosphorylation

def KinaseActivationClosed (K : KinaseActivationPackage) : Prop :=
  K.atpBinding ∧ K.conformationalChange ∧ K.catalyticActivity ∧ K.substratePhosphorylation

theorem kinase_activation_closed_from_evidence (K : KinaseActivationPackage)
    (E : KinaseActivationEvidence K) : KinaseActivationClosed K := by
  exact And.intro E.atpBindingClosed (And.intro E.conformationalChangeClosed
    (And.intro E.catalyticActivityClosed E.substratePhosphorylationClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse