package com.uDAO;

import java.util.List;

import com.uentity.Cart;

public interface CartDao {
public boolean addCart(Cart c);
public List<Cart> getFoodByUser(int userID);
public boolean deleteCusine(int fid,int uid,int cid);

}
