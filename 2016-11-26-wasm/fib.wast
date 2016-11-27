(module
  (export "fib" (func $fib))
  (func $fib (param $n i32) (result i32)
    (local $a i32)
    (local $b i32)
    (local $t i32)
    (loop $while-in
      (block $while-out
        (if
          (i32.eqz
            (i32.ge_s
              (get_local $n)
              (i32.const 0)
            )
          )
          (br $while-out)
        )
        (block
          (set_local $t
            (get_local $b)
          )
          (set_local $b
            (i32.add
              (get_local $a)
              (get_local $b)
            )
          )
          (set_local $a
            (get_local $t)
          )
          (set_local $n
            (i32.sub
              (get_local $n)
              (i32.const 1)
            )
          )
        )
        (br $while-in)
      )
    )
    (return
      (get_local $b)
    )
  )
)
