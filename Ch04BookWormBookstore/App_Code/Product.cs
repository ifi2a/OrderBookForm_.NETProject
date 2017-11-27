using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{

    public Product() {}

    public string isbn { get; set; }
    public string Title { get; set; }
    public string Author {get; set; }
    public string Publisher {get; set; }
    public double RetailPrice {get; set; }
    
}