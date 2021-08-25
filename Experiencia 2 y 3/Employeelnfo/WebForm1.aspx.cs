using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employeelnfo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            initPositionRol();
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string posicion = "";
            if (Posición.SelectedValue == "Trabajador")
                posicion = "Trabajador";
            if (Posición.SelectedValue == "Jefe")
                posicion = "Jefe";
            if (Posición.SelectedValue == "Vicepresidente")
                posicion = "Vicepresidente";
            if (Posición.SelectedValue == "Presidente")
                posicion = "Presidente";
            InfoLabel.Text = " Empleado: " + Nombre.Text + " " + Apellidos.Text +
            " Codigo: " + Codigo.Text + " Posición: " + posicion;
            Posición.SelectedIndex = 0;

        }
        private void initPositionRol()
        {
            Rol.Items.Clear();
            Rol.Enabled = true;
            Rol.Items.Add("Analista");
            Rol.Items.Add("Diseñador");
            Rol.Items.Add("Desarrollador");
        }

        protected void Posición_SelectedIndexChanged(object sender, EventArgs e)
        {
            {
                if (Posición.Items[0].Selected == true)
                    initPositionRol();
                if (Posición.Items[1].Selected == true)
                {
                    Rol.Items.Clear();
                    Rol.Enabled = true;
                    Rol.Items.Add("Administrador General");
                    Rol.Items.Add("Administrador de Proyecto");
                }
                if (Posición.Items[2].Selected == true)
                {
                    Rol.Items.Clear();
                    Rol.Enabled = true;
                    Rol.Items.Add("VP Ventas");
                    Rol.Items.Add("VP Marketing");
                    Rol.Items.Add("VP Producción");
                    Rol.Items.Add("VP Recursos Humanos");
                }
                if (Posición.Items[32].Selected == true)
                {
                    Rol.Items.Clear();
                    Rol.Enabled = false;
                }
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Nombre.Text = "";
            Apellidos.Text = "";
            Codigo.Text = "";
            initPositionRol();
            Posición.SelectedIndex = 0;
            InfoLabel.Text = "";



        }
    }
}