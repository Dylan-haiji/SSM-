package com.ssm.pojo;

import java.io.Serializable;

public class Order 
	implements Serializable{
	    /**  
		 * @Fields field:field:{todo}(用一句话描述这个变量表示什么)  
		 */ 
		private static final long serialVersionUID = 5074952466322171517L;
		private int id;
	    private String name;
	    private String pws;
	    private String phone;
	    private String adder;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPws() {
			return pws;
		}
		public void setPws(String pws) {
			this.pws = pws;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getAdder() {
			return adder;
		}
		public void setAdder(String adder) {
			this.adder = adder;
		}
		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + ((adder == null) ? 0 : adder.hashCode());
			result = prime * result + id;
			result = prime * result + ((name == null) ? 0 : name.hashCode());
			result = prime * result + ((phone == null) ? 0 : phone.hashCode());
			result = prime * result + ((pws == null) ? 0 : pws.hashCode());
			return result;
		}
		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Order other = (Order) obj;
			if (adder == null) {
				if (other.adder != null)
					return false;
			} else if (!adder.equals(other.adder))
				return false;
			if (id != other.id)
				return false;
			if (name == null) {
				if (other.name != null)
					return false;
			} else if (!name.equals(other.name))
				return false;
			if (phone == null) {
				if (other.phone != null)
					return false;
			} else if (!phone.equals(other.phone))
				return false;
			if (pws == null) {
				if (other.pws != null)
					return false;
			} else if (!pws.equals(other.pws))
				return false;
			return true;
		}
		@Override
		public String toString() {
			return "Order [id=" + id + ", name=" + name + ", pws=" + pws + ", phone=" + phone + ", adder=" + adder
					+ "]";
		}
		
	   
	}

