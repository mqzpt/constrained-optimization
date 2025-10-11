\ Model a3q2
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  H_F + H_G + H_H
Subject To
 assign_once[0]: y[0,F] + y[0,G] + y[0,H] = 1
 assign_once[1]: y[1,F] + y[1,G] + y[1,H] = 1
 assign_once[2]: y[2,F] + y[2,G] + y[2,H] = 1
 assign_once[3]: y[3,F] + y[3,G] + y[3,H] = 1
 assign_once[4]: y[4,F] + y[4,G] + y[4,H] = 1
 assign_once[5]: y[5,F] + y[5,G] + y[5,H] = 1
 assign_once[6]: y[6,F] + y[6,G] + y[6,H] = 1
 assign_once[7]: y[7,F] + y[7,G] + y[7,H] = 1
 assign_once[8]: y[8,F] + y[8,G] + y[8,H] = 1
 assign_once[9]: y[9,F] + y[9,G] + y[9,H] = 1
 assign_once[10]: y[10,F] + y[10,G] + y[10,H] = 1
 assign_once[11]: y[11,F] + y[11,G] + y[11,H] = 1
 assign_once[12]: y[12,F] + y[12,G] + y[12,H] = 1
 assign_once[13]: y[13,F] + y[13,G] + y[13,H] = 1
 assign_once[14]: y[14,F] + y[14,G] + y[14,H] = 1
 assign_once[15]: y[15,F] + y[15,G] + y[15,H] = 1
 assign_once[16]: y[16,F] + y[16,G] + y[16,H] = 1
 assign_once[17]: y[17,F] + y[17,G] + y[17,H] = 1
 assign_once[18]: y[18,F] + y[18,G] + y[18,H] = 1
 assign_once[19]: y[19,F] + y[19,G] + y[19,H] = 1
 xF_link: - 4 y[0,F] - y[1,F] - y[2,F] - 2 y[3,F] - 10 y[4,F] - 2 y[5,F]
   - 3 y[6,F] - 9 y[7,F] - 2 y[8,F] - 5 y[9,F] - 8 y[10,F] - 7 y[11,F]
   - 9 y[12,F] - 6 y[13,F] - 6 y[14,F] - 11 y[15,F] - 9 y[16,F] - 7 y[17,F]
   - 13 y[18,F] - 4 y[19,F] + x[F] = 0
 xG_link: - 4 y[0,G] - y[1,G] - y[2,G] - 2 y[3,G] - 10 y[4,G] - 2 y[5,G]
   - 3 y[6,G] - 9 y[7,G] - 2 y[8,G] - 5 y[9,G] - 8 y[10,G] - 7 y[11,G]
   - 9 y[12,G] - 6 y[13,G] - 6 y[14,G] - 11 y[15,G] - 9 y[16,G] - 7 y[17,G]
   - 13 y[18,G] - 4 y[19,G] + x[G] = 0
 xH_link: - 4 y[0,H] - y[1,H] - y[2,H] - 2 y[3,H] - 10 y[4,H] - 2 y[5,H]
   - 3 y[6,H] - 9 y[7,H] - 2 y[8,H] - 5 y[9,H] - 8 y[10,H] - 7 y[11,H]
   - 9 y[12,H] - 6 y[13,H] - 6 y[14,H] - 11 y[15,H] - 9 y[16,H] - 7 y[17,H]
   - 13 y[18,H] - 4 y[19,H] + x[H] = 0
 cap_F: x[F] <= 50
 cap_G: x[G] <= 50
 cap_H: x[H] <= 50
 H_F_def: 1.7 x[F] + H_F = 100
 H_G_def: 1.8 x[G] + H_G = 90
 one_segment: z[1] + z[2] + z[3] + z[4] + z[5] + z[6] + z[7] + z[8] + z[9]
   + z[10] = 1
 t_bounds[1]: - 5 z[1] + t[1] <= 0
 t_bounds[2]: - 5 z[2] + t[2] <= 0
 t_bounds[3]: - 5 z[3] + t[3] <= 0
 t_bounds[4]: - 5 z[4] + t[4] <= 0
 t_bounds[5]: - 5 z[5] + t[5] <= 0
 t_bounds[6]: - 5 z[6] + t[6] <= 0
 t_bounds[7]: - 5 z[7] + t[7] <= 0
 t_bounds[8]: - 5 z[8] + t[8] <= 0
 t_bounds[9]: - 5 z[9] + t[9] <= 0
 t_bounds[10]: - 5 z[10] + t[10] <= 0
 xH_PWL_position: x[H] - 5 z[2] - 10 z[3] - 15 z[4] - 20 z[5] - 25 z[6]
   - 30 z[7] - 35 z[8] - 40 z[9] - 45 z[10] - t[1] - t[2] - t[3] - t[4]
   - t[5] - t[6] - t[7] - t[8] - t[9] - t[10] = 0
 H_H_PWL_value: H_H - 70.864142 z[1] - 58.268506 z[2]
   - 44.25704699999999 z[3] - 31.253859 z[4] - 20.851903 z[5]
   - 13.119213 z[6] - 7.455734 z[7] - 3.251991 z[8] - 0.059473 z[9]
   + 2.424406999999999 z[10] + 2.519127 t[1] + 2.802291 t[2]
   + 2.600638 t[3] + 2.08039 t[4] + 1.546538 t[5] + 1.132696 t[6]
   + 0.840751 t[7] + 0.638504 t[8] + 0.496778 t[9] + 0.395294 t[10] = 0
Bounds
 H_F free
 H_G free
 H_H free
Binaries
 y[0,F] y[0,G] y[0,H] y[1,F] y[1,G] y[1,H] y[2,F] y[2,G] y[2,H] y[3,F]
 y[3,G] y[3,H] y[4,F] y[4,G] y[4,H] y[5,F] y[5,G] y[5,H] y[6,F] y[6,G]
 y[6,H] y[7,F] y[7,G] y[7,H] y[8,F] y[8,G] y[8,H] y[9,F] y[9,G] y[9,H]
 y[10,F] y[10,G] y[10,H] y[11,F] y[11,G] y[11,H] y[12,F] y[12,G] y[12,H]
 y[13,F] y[13,G] y[13,H] y[14,F] y[14,G] y[14,H] y[15,F] y[15,G] y[15,H]
 y[16,F] y[16,G] y[16,H] y[17,F] y[17,G] y[17,H] y[18,F] y[18,G] y[18,H]
 y[19,F] y[19,G] y[19,H] z[1] z[2] z[3] z[4] z[5] z[6] z[7] z[8] z[9] z[10]
End
