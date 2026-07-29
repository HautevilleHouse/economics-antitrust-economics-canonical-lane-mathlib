import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure UtilityPackage where
  choiceSpace : Type u
  preferenceRelation : choiceSpace → choiceSpace → Prop
  utilityFunction : choiceSpace → ℝ
  representationTheorem : Prop
  rationalityAxioms : Prop

structure UtilityEvidence (U : UtilityPackage) where
  representationTheoremClosed : U.representationTheorem
  rationalityAxiomsClosed : U.rationalityAxioms

def UtilityClosed (U : UtilityPackage) : Prop :=
  U.representationTheorem ∧ U.rationalityAxioms

theorem utility_closed_from_evidence (U : UtilityPackage) (E : UtilityEvidence U) :
    UtilityClosed U := by
  exact And.intro E.representationTheoremClosed E.rationalityAxiomsClosed

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse