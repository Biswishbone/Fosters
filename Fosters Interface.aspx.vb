Imports System.Data.SqlClient
Imports System.Web.UI.WebControls.Expressions

Public Class Fosters_Interface
    Inherits System.Web.UI.Page
    Public Shared cons As String = "server=COBBISSQL01.AD.ILSTU.EDU/BIS362;Database=BIS362;trusted_connection=yes;"
    Public Shared con As SqlConnection = New SqlConnection(cons)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Image1.ImageUrl = "OIP.jpg)"
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim fosterid, firstname, lastname, email, address, phonenumber, lastintakedate,
            currentpets, children, fence As String
        If TextBox2.Text = Nothing Or TextBox3.Text = Nothing Or TextBox4.Text = Nothing Or TextBox5.Text = Nothing Or TextBox6.Text = Nothing Or TextBox7.Text = Nothing Or TextBox8.Text = Nothing Or TextBox9.Text = Nothing Or TextBox10.Text = Nothing Then
            MsgBox("All Fields Must Be Completed", vbExclamation, "Error")
            Exit Sub
        End If
        fosterid = TextBox1.Text
        firstname = TextBox2.Text
        lastname = TextBox3.Text
        email = TextBox4.Text
        address = TextBox5.Text
        phonenumber = TextBox6.Text
        lastintakedate = TextBox7.Text
        currentpets = TextBox8.Text
        children = TextBox9.Text
        fence = TextBox10.Text

        Dim cmdinsert As New SqlCommand("Insert into Fosters (Fosterid, FirstName, LastName, Email, Address, PhoneNumber, LastIntakeDate) values (@p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9)", con)
        With cmdinsert.Parameters
            .Clear()
            .AddWithValue("@p1", fosterid)
            .AddWithValue("@p2", firstname)
            .AddWithValue("@p3", lastname)
            .AddWithValue("@p4", email)
            .AddWithValue("@p5", address)
            .AddWithValue("@p6", phonenumber)
            .AddWithValue("@p7", lastintakedate)
            .AddWithValue("@p8", currentpets)
            .AddWithValue("@p9", children)
            .AddWithValue("@p10", fence)
        End With

        Try
            If con.State = ConnectionState.Closed Then con.Open()
            cmdinsert.ExecuteNonQuery()
            Response.Write("Foster Added Succesffully")
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
    End Sub
End Class
