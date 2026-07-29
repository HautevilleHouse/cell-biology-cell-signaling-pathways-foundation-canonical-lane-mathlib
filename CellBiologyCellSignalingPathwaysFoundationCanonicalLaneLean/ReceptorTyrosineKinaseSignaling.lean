import canonicalLaneMathlib.AdmissibleClass

/-!
# Receptor Tyrosine Kinase (RTK) Signaling Package
-/

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure ReceptorTyrosineKinaseSignalingPackage where
  rtkFamily : Type u
  ligandBindingDomain : Type v
  kinaseDomainActivation : Prop
  autophosphorylation : Prop
  adaptorRecruitment : Prop
  mapkCascade : Prop

structure ReceptorTyrosineKinaseSignalingEvidence (R : ReceptorTyrosineKinaseSignalingPackage) where
  kinaseDomainActivationClosed : R.kinaseDomainActivation
  autophosphorylationClosed : R.autophosphorylation
  adaptorRecruitmentClosed : R.adaptorRecruitment
  mapkCascadeClosed : R.mapkCascade

def ReceptorTyrosineKinaseSignalingClosed (R : ReceptorTyrosineKinaseSignalingPackage) : Prop :=
  R.kinaseDomainActivation ∧ R.autophosphorylation ∧ R.adaptorRecruitment ∧ R.mapkCascade

theorem receptor_tyrosine_kinase_signaling_closed_from_evidence
    (R : ReceptorTyrosineKinaseSignalingPackage) (E : ReceptorTyrosineKinaseSignalingEvidence R) :
    ReceptorTyrosineKinaseSignalingClosed R := by
  exact And.intro E.kinaseDomainActivationClosed
    (And.intro E.autophosphorylationClosed
      (And.intro E.adaptorRecruitmentClosed E.mapkCascadeClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse