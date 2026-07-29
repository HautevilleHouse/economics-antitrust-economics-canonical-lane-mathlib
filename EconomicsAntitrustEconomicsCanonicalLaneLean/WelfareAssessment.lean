import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure WelfareAssessment where
  consumerSurplus : Float
  producerSurplus : Float
  deadweightLoss : Float
  totalWelfare : Float

structure WelfareEvidence (W : WelfareAssessment) where
  consumerSurplusNonnegative : W.consumerSurplus ≥ 0.0
  producerSurplusNonnegative : W.producerSurplus ≥ 0.0
  deadweightLossNonnegative : W.deadweightLoss ≥ 0.0

def WelfareClosed (W : WelfareAssessment) : Prop :=
  W.consumerSurplus ≥ 0.0 ∧ W.producerSurplus ≥ 0.0 ∧ W.deadweightLoss ≥ 0.0

theorem welfare_closed_from_evidence (W : WelfareAssessment) (E : WelfareEvidence W) : WelfareClosed W := by
  exact And.intro E.consumerSurplusNonnegative (And.intro E.producerSurplusNonnegative E.deadweightLossNonnegative)

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse