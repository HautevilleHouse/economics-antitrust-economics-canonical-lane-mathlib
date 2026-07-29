import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure RemediesPackage where
  structuralRemedy : Prop
  behavioralRemedy : Prop
  monitoringRequired : Prop
  durationYears : Nat

structure RemediesEvidence (R : RemediesPackage) where
  structuralRemedyDefined : R.structuralRemedy
  behavioralRemedyDefined : R.behavioralRemedy
  durationPositive : R.durationYears > 0

def RemediesClosed (R : RemediesPackage) : Prop :=
  R.structuralRemedy ∧ R.behavioralRemedy ∧ R.durationYears > 0

theorem remedies_closed_from_evidence (R : RemediesPackage) (E : RemediesEvidence R) : RemediesClosed R := by
  exact And.intro E.structuralRemedyDefined (And.intro E.behavioralRemedyDefined E.durationPositive)

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse