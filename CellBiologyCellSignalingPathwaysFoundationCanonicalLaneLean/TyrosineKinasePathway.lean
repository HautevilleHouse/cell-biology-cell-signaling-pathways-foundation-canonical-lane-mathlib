import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure TyrosineKinaseReceptorPackage where
  ligandBinding : Prop
  receptorAutophosphorylation : Prop
  adaptorProteinRecruitment : Prop
  mapkCascadeActivation : Prop

structure TyrosineKinaseReceptorEvidence (R : TyrosineKinaseReceptorPackage) where
  ligandBindingClosed : R.ligandBinding
  receptorAutophosphorylationClosed : R.receptorAutophosphorylation
  adaptorProteinRecruitmentClosed : R.adaptorProteinRecruitment
  mapkCascadeActivationClosed : R.mapkCascadeActivation

def TyrosineKinaseReceptorClosed (R : TyrosineKinaseReceptorPackage) : Prop :=
  R.ligandBinding ∧ R.receptorAutophosphorylation ∧ R.adaptorProteinRecruitment ∧ R.mapkCascadeActivation

theory tyrosine_kinase_receptor_closed_from_evidence
    (R : TyrosineKinaseReceptorPackage) (E : TyrosineKinaseReceptorEvidence R) :
    TyrosineKinaseReceptorClosed R := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.receptorAutophosphorylationClosed
      (And.intro E.adaptorProteinRecruitmentClosed E.mapkCascadeActivationClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse