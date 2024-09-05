using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.IO;
using System.Configuration;

namespace SGC_UTNA
{
    public partial class HostingGratuito : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["SGC_UTNAConnectionString"].ConnectionString;
        public SqlCommand comandol = new SqlCommand();
        private ClassBD conn = new ClassBD();
        string Fecha = DateTime.Now.ToString("dd/MM/yyyy");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                int idFormato = Convert.ToInt32(Request.QueryString["id"]);
            }
        }
    }
}





