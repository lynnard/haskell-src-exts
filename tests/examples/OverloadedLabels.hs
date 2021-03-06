-- Basic tests of overloaded labels

{-# LANGUAGE OverloadedLabels
           , DataKinds
           , FlexibleContexts
           , FlexibleInstances
           , MultiParamTypeClasses
           , NoMonomorphismRestriction
  #-}

import GHC.OverloadedLabels

instance IsLabel "true" Bool where
  fromLabel _ = True

instance IsLabel "_False1'" Bool where
  fromLabel _ = False

a :: IsLabel "true" t => t
a = #true

b = #_False1'

c :: Bool
c = #true

main = do print (a :: Bool)
          print (b :: Bool)
          print c
