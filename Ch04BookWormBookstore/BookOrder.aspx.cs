using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

public partial class BookOrder : System.Web.UI.Page
{
    
    private Product selectedProduct;
  

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            ddlProducts.DataBind();


        DisplaySelectedProduct();
    }

    private Product GetSelectedProduct()
    {
        DataView productsTable = (DataView)
            AccessDataSource1.Select(DataSourceSelectArguments.Empty);
        productsTable.RowFilter =
            "isbn = '" + ddlProducts.SelectedValue + "'";
        DataRowView row = (DataRowView)productsTable[0];

        Product p = new Product();
        p.isbn = row["isbn"].ToString();
        p.Title = row["title"].ToString();
        p.Author = row["author_name"].ToString();
        p.Publisher = row["publisher_name"].ToString();
        p.RetailPrice = (double)row["retail_price"];

        return p;
    }


    private void DisplaySelectedProduct()
    {
        selectedProduct = GetSelectedProduct();
        lblAuthor.Text = selectedProduct.Author;
        lblPublisher.Text = selectedProduct.Publisher;
        lblRetailPrice.Text = selectedProduct.RetailPrice.ToString();
    }


}