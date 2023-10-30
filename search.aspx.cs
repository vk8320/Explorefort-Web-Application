using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySqlX.XDevAPI.Common;

namespace ExploreFort_Application
{
    public partial class search : System.Web.UI.Page
    {

        private string connectionString = ConfigurationManager.ConnectionStrings["LocalMysql"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keyword = txtKeyword.Text.Trim();

            // Perform search in Forts table
            DataTable fortsTable = SearchTable("forts", "FName", keyword);

            // Perform search in Hotels table
            DataTable hotelsTable = SearchTable("hotels", "HName", keyword);

            DataTable combinedDataTable = new DataTable();
            combinedDataTable.Columns.Add("Name");
            combinedDataTable.Columns.Add("Description");
            combinedDataTable.Columns.Add("Location");
            combinedDataTable.Columns.Add("image1");
            combinedDataTable.Columns.Add("TableType");

            // Add Forts data to combined DataTable
            foreach (DataRow row in fortsTable.Rows)
            {
                combinedDataTable.Rows.Add(row["FName"], row["FDescription"], row["Location"], row["image1"], "Forts");
            }

            // Add Hotels data to combined DataTable
            foreach (DataRow row in hotelsTable.Rows)
            {
                combinedDataTable.Rows.Add(row["HName"], row["HDescription"], row["Location"], row["image1"], "Hotels");
            }

            if (combinedDataTable.Rows.Count > 0)
            {
                lblSearchMessage.Text = string.Empty;
                DisplayResults(combinedDataTable);
            }
            else
            {
                lblSearchMessage.Text = "No results found.";
                divResults.InnerHtml = string.Empty;
            }
        }

        private DataTable SearchTable(string tableName, string columnName, string keyword)
        {
            
            MySqlConnection connection = new MySqlConnection(connectionString);

            string query = $"SELECT * FROM {tableName} WHERE {columnName} LIKE @Keyword";
            MySqlCommand command = new MySqlCommand(query, connection);
            command.Parameters.AddWithValue("@Keyword", "%" + keyword + "%");

            MySqlDataAdapter adapter = new MySqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            return dataTable;
        }

        private void DisplayResults(DataTable dataTable)
        {
            divResults.InnerHtml = string.Empty;
            string html = "<div class='card-container'>";

            foreach (DataRow row in dataTable.Rows)
            {
     
                html += "<div class='card'>";
                html += "<img src='" + ResolveUrl(row["image1"].ToString()) + "' class='card-img-top' alt='Image'>";
                html += "<div class='card-body'>";
                html += "<h5>" + row["TableType"].ToString() + "</h5>";
                html += "<p><strong>Name: </strong>" + row["Name"].ToString() + "</p>";
                html += "<p><strong>Description: </strong>" + row["Description"].ToString() + "</p>";
                html += "<p><strong>Location: </strong>" + row["Location"].ToString() + "</p>";
                html += "</div>";
                html += "</div>";
            }

            html += "</div>";

            

            divResults.InnerHtml = html;
        }
    }
}