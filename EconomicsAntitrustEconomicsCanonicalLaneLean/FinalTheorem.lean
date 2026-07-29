import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsAntitrustEconomicsCanonicalLaneLean.MarketConcentration
import HautevilleHouse.EconomicsAntitrustEconomicsCanonicalLaneLean.MergerReview
import HautevilleHouse.EconomicsAntitrustEconomicsCanonicalLaneLean.PredatoryPricing

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedAntitrustClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_antitrust_endgame (A : AdmissibleClass) : ConstrainedAntitrustClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse
