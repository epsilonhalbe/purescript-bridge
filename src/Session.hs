module Session where

import Data.Proxy
import Language.PureScript.Bridge
import Language.PureScript.Bridge.Builder
import Language.PureScript.Bridge.Primitives
import Language.PureScript.Bridge.Printer
import Language.PureScript.Bridge.PSTypes
import Language.PureScript.Bridge.SumType
import Language.PureScript.Bridge.Tuple
import Language.PureScript.Bridge.TypeInfo
import Language.PureScript.Bridge.TypeParameters

a = mkTypeInfo (Proxy :: Proxy (Either String Int))
applyBridge = buildBridge defaultBridge
psA = applyBridge a
foo = 0
b = mkSumType (Proxy :: Proxy (Either String Int))
psB@(SumType t cs) = bridgeSumType (buildBridge defaultBridge) b
