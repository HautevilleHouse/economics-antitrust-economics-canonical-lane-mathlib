import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure ConsumerWelfareStandard where
  outputEffect : Prop
  priceEffect : Prop
  innovationEffect : Prop
  qualityEffect : Prop

structure ConsumerWelfareAssessment (S : ConsumerWelfareStandard) where
  overallWelfareEffect : Prop
  netConsumerSurplusChange : Prop
  deadweightLossChange : Prop

def ConsumerWelfareClosed (S : ConsumerWelfareStandard) (A : ConsumerWelfareAssessment S) : Prop :=
  A.overallWelfareEffect ∧
  A.netConsumerSurplusChange ∧
  A.deadweightLossChange

theorem consumer_welfare_closed_from_assessment (S : ConsumerWelfareStandard) (A : ConsumerWelfareAssessment S) :
    ConsumerWelfareClosed S A := by
  exact And.intro A.overallWelfareEffect
    (And.intro A.netConsumerSurplusChange A.deadweightLossChange)

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse