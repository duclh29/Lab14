package com.example.lab.controller;

import com.example.lab.entity.NhanVien;
import com.example.lab.entity.view.NhanVienViewModel;
import com.example.lab.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Controller
public class NhanVienController {

    ArrayList<NhanVien> listNhanVien= new ArrayList<>();


    public NhanVienController(){
        NhanVien nhanVien = new NhanVien("PH2123", "Nguyen Van A", "Ha Noi", "Nam");
        listNhanVien.add(nhanVien);
        listNhanVien.add(new NhanVien("Ph1234", "Nguyen Van B", "Ha Noi", "Nu"));
    }

    @GetMapping("/hien-thi")
    public String hienThiThongTin(Model model){
        model.addAttribute("nhanVienViewModel", new NhanVienViewModel());
        model.addAttribute("listNhanVien", listNhanVien);
        return "index";
    }

    @PostMapping("/addNew")
    public String addNew(@RequestParam("maNhanVien") String maNhanVien,
                         @RequestParam("hoTen") String hoTen,
                         @RequestParam("diaChi") String diaChi,
                         @RequestParam("gioiTinh") String gioiTinh
                         ){
        NhanVien nhanVien = new NhanVien(maNhanVien, hoTen, diaChi, gioiTinh);
        listNhanVien.add(nhanVien);
        return "redirect:/hien-thi";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") String maNhanVien){
        NhanVien nhanVien = new NhanVien();
        for (NhanVien nv : listNhanVien){
            if(nv.getMaNhanVien().equals(maNhanVien)){
                nhanVien = nv;
            }
        }
        listNhanVien.remove(nhanVien);
        return "redirect:/hien-thi";
    }

    @GetMapping("/detail")
    String detail(Model model, @RequestParam("id") String maNhanVien){
        NhanVien nhanVien = new NhanVien();
        for (NhanVien nv : listNhanVien){
            if (nv.getMaNhanVien().equals(maNhanVien)){
                nhanVien = nv;
            }
        }
        model.addAttribute("nhanVien", nhanVien);
        return "detail";
    }

    @PostMapping("/update")
    public String update(@RequestParam("maNhanVien") String maNhanVien,
                         @RequestParam("hoTen") String hoTen,
                         @RequestParam("diaChi") String diaChi,
                         @RequestParam("gioiTinh") String gioiTinh){
        for (NhanVien nhanVien : listNhanVien){
            if(nhanVien.getMaNhanVien().equals(maNhanVien)){
                nhanVien.setMaNhanVien(hoTen);
                nhanVien.setDiaChi(diaChi);
                nhanVien.setGioiTinh(gioiTinh);
            }
        }
        return "redirect:/hien-thi";
    }

}
