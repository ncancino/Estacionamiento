using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Estacionamiento.app
{
    public partial class ingresar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime fechaIngreso = DateTime.Now;
           
            try
            {

                string patente = Request.Form["ctl00$ContentPlaceHolder1$txtPatente"].ToUpper();

                using (var est = new estacionamientoEntities())
                {
                    var log = est.registro.FirstOrDefault(c => c.patente.Equals(patente) && c.estado=="1");
                    if (log == null)
                    {
                        
                            var ingresoPatente = new registro()
                            {
                                patente = patente,
                                fecha_ingreso = fechaIngreso,
                                estado = "1"
                            };

                            est.registro.Add(ingresoPatente);
                            est.SaveChanges();
                            lblresultado.Text = "Ingresado Correctamente";
                            lblHora.Text = fechaIngreso.ToString();

                        }
                    else
                    {
                        Response.Redirect("error.aspx");
                    }
                    

                }

            }
            catch (Exception)
            {
                Response.Redirect("error.aspx");
            }
        }
    }
}