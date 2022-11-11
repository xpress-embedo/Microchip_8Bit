Public Class Form1

    Dim PortName As String()
    Dim i As Integer
    Dim j As Integer
    Dim PacketLength As Integer
    Dim DisplaySetting As Byte
    Dim ShiftSpeed As Byte

    Dim send_data As String
    Dim input As Integer = 0
    Dim receive_data As String
    Dim Ctr As Control
    Dim BRx(256) As Byte


    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        rd_Still_Display.Checked = True
        rd_Left_to_Right.Checked = False
        rd_Right_to_Left.Checked = False

        rd_Normal.Checked = True
        rd_Inverted.Checked = False
        rd_Blink.Checked = False

        SerialPort1.DataBits = 8
        SerialPort1.StopBits = IO.Ports.StopBits.One
        SerialPort1.Parity = IO.Ports.Parity.None

        'Set up Combobox comport 1
        cbb_comport.DropDownStyle = ComboBoxStyle.DropDownList
        cbb_baudrate.DropDownStyle = ComboBoxStyle.DropDownList
        cbb_stopbit.DropDownStyle = ComboBoxStyle.DropDownList
        cbb_parity.DropDownStyle = ComboBoxStyle.DropDownList
        cbb_databit.DropDownStyle = ComboBoxStyle.DropDownList
        cbb_flow.DropDownStyle = ComboBoxStyle.DropDownList

        cbb_shiftspeed.DropDownStyle = ComboBoxStyle.DropDownList
        cbb_shiftspeed.Items.Add(1)
        cbb_shiftspeed.Items.Add(2)
        cbb_shiftspeed.SelectedIndex = 0

        cbb_comport.Sorted = True
        PortName = IO.Ports.SerialPort.GetPortNames()
        For Each comp1 In PortName
            cbb_comport.Items.Add(comp1)
        Next
        cbb_comport.SelectedIndex = 0
        'Set up combobox baudrate 1
        cbb_baudrate.Items.Add(2400)
        cbb_baudrate.Items.Add(4800)
        cbb_baudrate.Items.Add(9600)
        cbb_baudrate.Items.Add(14400)
        cbb_baudrate.Items.Add(19200)
        cbb_baudrate.Items.Add(38400)
        cbb_baudrate.Items.Add(56000)
        cbb_baudrate.Items.Add(57600)
        cbb_baudrate.Items.Add(115200)
        cbb_baudrate.Items.Add(128000)
        cbb_baudrate.Items.Add(256000)

        cbb_baudrate.SelectedIndex = 2
        'Set up combobox databit 1

        cbb_databit.SelectedIndex = 1

    End Sub

    Private Sub btn_Connect_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_Connect.Click
        Timer1.Enabled = True
        Timer1.Interval = 500
        SerialPort1.PortName = cbb_comport.SelectedItem
        SerialPort1.BaudRate = cbb_baudrate.SelectedItem
        SerialPort1.DataBits = cbb_databit.SelectedItem


        SerialPort1.Open()
        Me.SerialPort1.DiscardOutBuffer()           'clear output buffer
        Me.SerialPort1.DiscardInBuffer()            'clear input buffer
        Me.SerialPort1.RtsEnable = False
        Me.SerialPort1.DtrEnable = False

        btn_DisConnect.Enabled = True
        btn_Connect.Enabled = False

        Me.Text = "LED MATRIX (Connected)"
        Panel1.BackColor = Color.Lime
        cbb_comport.Cursor = Cursors.No
    End Sub

    Private Sub btn_DisConnect_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_DisConnect.Click
        SerialPort1.Close()
        Timer1.Stop()
        btn_DisConnect.Enabled = False
        btn_Connect.Enabled = True

        Panel1.BackColor = Color.Transparent

        btn_Connect.Enabled = True
        btn_DisConnect.Enabled = False
        cbb_comport.Enabled = True
        cbb_baudrate.Enabled = True
        cbb_databit.Enabled = True
        Me.Text = "LED MATRIX"
    End Sub

    Private Sub btnSend_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSend.Click
        If rd_Still_Display.Checked = True Then
            If rd_Normal.Checked = True Then
                DisplaySetting = 5
            ElseIf rd_Inverted.Checked = True Then
                'Do Nothing
                DisplaySetting = 0
                MsgBox("Invalid Combination")
            ElseIf rd_Blink.Checked = True Then
                'Do Nothing
                DisplaySetting = 0
                MsgBox("Invalid Combination")
            End If
        ElseIf rd_Left_to_Right.Checked = True Then
            If rd_Normal.Checked = True Then
                DisplaySetting = 1
            ElseIf rd_Inverted.Checked = True Then
                DisplaySetting = 3
            ElseIf rd_Blink.Checked = True Then
                'Do Nothing
                DisplaySetting = 0
                MsgBox("Invalid Combination")
            End If
        ElseIf rd_Right_to_Left.Checked = True Then
            If rd_Normal.Checked = True Then
                DisplaySetting = 2
            ElseIf rd_Inverted.Checked = True Then
                DisplaySetting = 4
            ElseIf rd_Blink.Checked = True Then
                'Do Nothing
                DisplaySetting = 0
                MsgBox("Invalid Combination")
            End If
        End If

        If DisplaySetting <> 0 Then
            ShiftSpeed = cbb_shiftspeed.SelectedItem
            send_data = 0
            PacketLength = Len(txtSend.Text)
            PacketLength = PacketLength + 4
            Me.SerialPort1.Write(New Byte() {&H1}, 0, 1)
            Call delay(90000)
            Me.SerialPort1.Write(New Byte() {(PacketLength \ 10) + 48}, 0, 1)
            Call delay(90000)
            Me.SerialPort1.Write(New Byte() {(PacketLength Mod 10) + 48}, 0, 1)
            Call delay(90000)
            Me.SerialPort1.Write(New Byte() {DisplaySetting + 48}, 0, 1)
            Call delay(90000)
            Me.SerialPort1.Write(New Byte() {ShiftSpeed + 48}, 0, 1)
            Call delay(90000)
            For Me.i = 0 To Len(txtSend.Text) - 1
                send_data = Mid(txtSend.Text, 1 + i, 1)
                Me.SerialPort1.Write(send_data)
                Call delay(90000)
            Next i
            Me.SerialPort1.Write(New Byte() {&H4}, 0, 1)
            Call delay(90000)
            MsgBox("Message Sent to LED Matrix")
        End If
    End Sub

    Public Sub delay(ByVal wait As Long)
        Dim i As Long
        For i = 0 To wait
        Next i
    End Sub

    Private Sub btnClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClear.Click
        txtSend.Clear()
    End Sub
    
End Class
