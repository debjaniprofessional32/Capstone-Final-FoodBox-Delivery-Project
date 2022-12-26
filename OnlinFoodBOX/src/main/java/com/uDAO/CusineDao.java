package com.uDAO;

import java.util.List;

import com.uentity.CusineList;

public interface CusineDao {
public boolean addCusine(CusineList cl);
public List<CusineList> getallCusine();
public CusineList getCusineByID(int fid);
 public boolean updateEdit(CusineList c);
 public boolean deleteservlet(int id);
 public List<CusineList> getVegItem();
 public List<CusineList> getNon_VegItem();
 public List<CusineList> getSweetItem();
 public List<CusineList> getBurgerPizza();
 public List<CusineList> getAllVegItem();
 public List<CusineList> getAllNon_VegItem();
 public List<CusineList> getAllSweetItem();
 public List<CusineList> getAllBurgerPizza();
 public List<CusineList> getCusinebySearch(String Ch);
}
