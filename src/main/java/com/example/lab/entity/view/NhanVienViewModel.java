package com.example.lab.entity.view;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class NhanVienViewModel {

    @NotBlank(message = "Ma nhan vien khong duoc de trong")
    private String maNhanVien;

    @NotBlank(message = "Ho ten khong duoc de trong")
    private String hoTen;

    @NotBlank(message = "Dia chi khong duoc de trong")
    private String diaChi;

    @NotBlank(message = "Gioi tinh khong duoc de trong")
    private String gioiTinh;
}
