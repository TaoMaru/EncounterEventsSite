' Project: Encounter Events Web App
' Developer: Maria Jackson
' Date: July 26, 2023
' Purpose: This app will display information for luxury event venues/locations and collect
''          reservation information. The total cost of the reservation will be computed and displayed.

Public Class About
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        ' calculates the total cost for the reservation based on the selections of venue, 
        ' event types, number of nights booked, and prozimity of date of reservationt to current date.

        'variables:
        Dim decCastleCost As Decimal = 750D
        Dim decArtisanCost As Decimal = 1250D
        Dim decEmersiveCost As Decimal = 2100D
        Dim strName As String
        Dim strEmail As String
        Dim decEventCost As Decimal = 0D
        Dim intNumberNights As Integer
        Dim strMessage As String

        'trim textbox data
        strName = txtName.Text.Trim
        strEmail = txtEmail.Text.Trim

        lblReservation.Text = ""

        'verify an event type is selected
        If Not (chkCastle.Checked Or chkArtisan.Checked Or chkEmersive.Checked) Then
            lblEventError.Visible = True
            'verify date
            If cldArrival.SelectedDate <= cldArrival.TodaysDate Then
                lblCalendarError.Visible = True
            Else
                lblCalendarError.Visible = False
            End If
        Else
            lblEventError.Visible = False
            If cldArrival.SelectedDate > cldArrival.TodaysDate Then
                lblCalendarError.Visible = False
                'calculate cost:
                If chkCastle.Checked Then
                    decEventCost += decCastleCost
                End If
                If chkArtisan.Checked Then
                    decEventCost += decArtisanCost
                End If
                If chkEmersive.Checked Then
                    decEventCost += decEmersiveCost
                End If

                intNumberNights = Convert.ToInt32(ddlNights.SelectedItem.Text)
                decEventCost = intNumberNights * decEventCost

                'create reservation message
                strMessage = "A reservation has been made for:" & "<br>" _
                    & strName & "<br>" _
                    & "Email: " & strEmail _
                    & "The estimated event cost is: " & decEventCost.ToString("C2") & "<br>" _
                    & "Arrival Date: " & cldArrival.SelectedDate.ToShortDateString() & "<br>" _
                    & "For " & intNumberNights.ToString() & "nights"

                lblReservation.Text = strMessage
            Else
                lblCalendarError.Visible = True
            End If
        End If

    End Sub
End Class