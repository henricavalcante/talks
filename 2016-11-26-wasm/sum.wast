(module
  (export "sum" (func $sum))
  (func $sum (param $a i32) (param $b i32) (result i32)
    (return
      (i32.add
        (get_local $a)
        (get_local $b)
      )
    )
  )
)
