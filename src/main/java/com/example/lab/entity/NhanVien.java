package com.example.lab.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class NhanVien {

    private String maNhanVien;

    private String hoTen;

    private String diaChi;

    private String gioiTinh;
}
