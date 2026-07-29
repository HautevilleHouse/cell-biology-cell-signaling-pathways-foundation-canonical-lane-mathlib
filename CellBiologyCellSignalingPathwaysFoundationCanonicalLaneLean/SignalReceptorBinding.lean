import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean

structure ReceptorBindingPackage where
  receptor : Type u
  ligand : Type v
  bindingAffinity : Type w
  receptorExpression : Prop
  ligandConcentration : Prop
  bindingKinetics : Prop
  downstreamActivation : Prop

structure ReceptorBindingEvidence (R : ReceptorBindingPackage) where
  receptorExpressionClosed : R.receptorExpression
  ligandConcentrationClosed : R.ligandConcentration
  bindingKineticsClosed : R.bindingKinetics
  downstreamActivationClosed : R.downstreamActivation

def ReceptorBindingClosed (R : ReceptorBindingPackage) : Prop :=
  R.receptorExpression ∧ R.ligandConcentration ∧ R.bindingKinetics ∧ R.downstreamActivation

theorem receptor_binding_closed_from_evidence (R : ReceptorBindingPackage) (E : ReceptorBindingEvidence R) :
    ReceptorBindingClosed R := by
  exact And.intro E.receptorExpressionClosed
    (And.intro E.ligandConcentrationClosed
      (And.intro E.bindingKineticsClosed E.downstreamActivationClosed))

end CellBiologyCellSignalingPathwaysFoundationCanonicalLaneLean
end HautevilleHouse