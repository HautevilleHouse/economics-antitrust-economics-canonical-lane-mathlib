import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAntitrustEconomicsCanonicalLaneLean

structure AntitrustAdmittedObject where
  marketStructure : Type
  equilibriumType : Prop
  welfareBenchmark : Prop
  conclusion : equilibriumType ∧ welfareBenchmark

structure AdmissibleClass where
  object : AntitrustAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion.1 ∧ A.object.conclusion.2) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsAntitrustEconomicsCanonicalLaneLean
end HautevilleHouse