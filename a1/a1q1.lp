
\* Steel blending LP: maximize profit with composition specs *\

Maximize
  obj: 2200 z_A + 1200 z_B
     - 400 y_1 - 500 y_2 - 650 y_3 - 800 y_4 - 1500 y_5

Subject To
  \* Availability (purchase ≤ supply) *\
  avail_1: y_1 <= 500
  avail_2: y_2 <= 50
  avail_3: y_3 <= 3000
  avail_4: y_4 <= 900
  avail_5: y_5 <= 200

  \* Alloy blend balances (inputs = output per alloy) *\
  blend_A: z_A - x_1_A - x_2_A - x_3_A - x_4_A - x_5_A = 0
  blend_B: z_B - x_1_B - x_2_B - x_3_B - x_4_B - x_5_B = 0

  \* Purchase allocation (use all purchased of each raw) *\
  alloc_1: y_1 - x_1_A - x_1_B = 0
  alloc_2: y_2 - x_2_A - x_2_B = 0
  alloc_3: y_3 - x_3_A - x_3_B = 0
  alloc_4: y_4 - x_4_A - x_4_B = 0
  alloc_5: y_5 - x_5_A - x_5_B = 0

  \* --- Composition specs for Stainless (A) --- *\
  Fe_A_low:  0.96 x_1_A + 0.91 x_2_A + 0.9975 x_3_A + 0.60 x_4_A + 0.555 x_5_A - 0.69 z_A >= 0
  Fe_A_up:   0.96 x_1_A + 0.91 x_2_A + 0.9975 x_3_A + 0.60 x_4_A + 0.555 x_5_A - 0.71 z_A <= 0

  C_A_up:    0.035 x_1_A + 0.015 x_2_A + 0.0005 x_3_A + 0.005 x_4_A + 0.001 x_5_A - 0.003 z_A <= 0

  Cr_A_low:  0.02 x_2_A + 0.38 x_4_A - 0.18 z_A >= 0
  Cr_A_up:   0.02 x_2_A + 0.38 x_4_A - 0.20 z_A <= 0

  Ni_A_low:  0.015 x_2_A + 0.44 x_5_A - 0.08 z_A >= 0
  Ni_A_up:   0.015 x_2_A + 0.44 x_5_A - 0.10 z_A <= 0

  Mn_A_up:   0.005 x_1_A + 0.04 x_2_A + 0.002 x_3_A + 0.015 x_4_A + 0.005 x_5_A - 0.01 z_A <= 0

  \* --- Composition specs for HSLA (B) --- *\
  Fe_B_low:  0.96 x_1_B + 0.91 x_2_B + 0.9975 x_3_B + 0.60 x_4_B + 0.555 x_5_B - 0.90 z_B >= 0
  Fe_B_up:   0.96 x_1_B + 0.91 x_2_B + 0.9975 x_3_B + 0.60 x_4_B + 0.555 x_5_B - 0.95 z_B <= 0

  C_B_low:   0.035 x_1_B + 0.015 x_2_B + 0.0005 x_3_B + 0.005 x_4_B + 0.001 x_5_B - 0.0005 z_B >= 0
  C_B_up:    0.035 x_1_B + 0.015 x_2_B + 0.0005 x_3_B + 0.005 x_4_B + 0.001 x_5_B - 0.0025 z_B <= 0

  Cr_B_up:   0.02 x_2_B + 0.38 x_4_B - 0.03 z_B <= 0

  Ni_B_up:   0.015 x_2_B + 0.44 x_5_B - 0.03 z_B <= 0

  Mn_B_low:  0.005 x_1_B + 0.04 x_2_B + 0.002 x_3_B + 0.015 x_4_B + 0.005 x_5_B - 0.005 z_B >= 0
  Mn_B_up:   0.005 x_1_B + 0.04 x_2_B + 0.002 x_3_B + 0.015 x_4_B + 0.005 x_5_B - 0.02 z_B <= 0

Bounds
  x_1_A >= 0
  x_2_A >= 0
  x_3_A >= 0
  x_4_A >= 0
  x_5_A >= 0
  x_1_B >= 0
  x_2_B >= 0
  x_3_B >= 0
  x_4_B >= 0
  x_5_B >= 0
  y_1 >= 0
  y_2 >= 0
  y_3 >= 0
  y_4 >= 0
  y_5 >= 0
  z_A >= 0
  z_B >= 0

End
