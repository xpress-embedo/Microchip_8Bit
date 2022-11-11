<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.cbb_flow = New System.Windows.Forms.ComboBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.cbb_databit = New System.Windows.Forms.ComboBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cbb_parity = New System.Windows.Forms.ComboBox()
        Me.cbb_stopbit = New System.Windows.Forms.ComboBox()
        Me.cbb_baudrate = New System.Windows.Forms.ComboBox()
        Me.cbb_comport = New System.Windows.Forms.ComboBox()
        Me.SerialPort1 = New System.IO.Ports.SerialPort(Me.components)
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.btn_Connect = New System.Windows.Forms.Button()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.btn_DisConnect = New System.Windows.Forms.Button()
        Me.btnSend = New System.Windows.Forms.Button()
        Me.btnClear = New System.Windows.Forms.Button()
        Me.txtSend = New System.Windows.Forms.TextBox()
        Me.cbb_shiftspeed = New System.Windows.Forms.ComboBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.GroupBox4 = New System.Windows.Forms.GroupBox()
        Me.rd_Right_to_Left = New System.Windows.Forms.RadioButton()
        Me.rd_Left_to_Right = New System.Windows.Forms.RadioButton()
        Me.rd_Still_Display = New System.Windows.Forms.RadioButton()
        Me.GroupBox5 = New System.Windows.Forms.GroupBox()
        Me.rd_Inverted = New System.Windows.Forms.RadioButton()
        Me.rd_Normal = New System.Windows.Forms.RadioButton()
        Me.rd_Blink = New System.Windows.Forms.RadioButton()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.Panel1.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        Me.GroupBox5.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.cbb_flow)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.cbb_databit)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.cbb_parity)
        Me.GroupBox1.Controls.Add(Me.cbb_stopbit)
        Me.GroupBox1.Controls.Add(Me.cbb_baudrate)
        Me.GroupBox1.Controls.Add(Me.cbb_comport)
        Me.GroupBox1.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(230, 184)
        Me.GroupBox1.TabIndex = 6
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "COM Port Setting"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(18, 154)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(83, 13)
        Me.Label6.TabIndex = 12
        Me.Label6.Text = "Flow Control:"
        '
        'cbb_flow
        '
        Me.cbb_flow.FlatStyle = System.Windows.Forms.FlatStyle.System
        Me.cbb_flow.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbb_flow.FormattingEnabled = True
        Me.cbb_flow.Items.AddRange(New Object() {"None"})
        Me.cbb_flow.Location = New System.Drawing.Point(116, 151)
        Me.cbb_flow.Name = "cbb_flow"
        Me.cbb_flow.Size = New System.Drawing.Size(97, 21)
        Me.cbb_flow.TabIndex = 11
        Me.cbb_flow.Text = "None"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(18, 129)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(67, 13)
        Me.Label5.TabIndex = 10
        Me.Label5.Text = "&Data bits :"
        '
        'cbb_databit
        '
        Me.cbb_databit.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbb_databit.FormattingEnabled = True
        Me.cbb_databit.Items.AddRange(New Object() {"7", "8"})
        Me.cbb_databit.Location = New System.Drawing.Point(116, 127)
        Me.cbb_databit.Name = "cbb_databit"
        Me.cbb_databit.Size = New System.Drawing.Size(97, 21)
        Me.cbb_databit.TabIndex = 9
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(18, 106)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(49, 13)
        Me.Label3.TabIndex = 8
        Me.Label3.Text = "Pa&rity :"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(18, 80)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(62, 13)
        Me.Label4.TabIndex = 7
        Me.Label4.Text = "Sto&p bits:"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(18, 58)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(68, 13)
        Me.Label2.TabIndex = 6
        Me.Label2.Text = "Baud rate:"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(16, 34)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(66, 13)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "&Com Port:"
        '
        'cbb_parity
        '
        Me.cbb_parity.FlatStyle = System.Windows.Forms.FlatStyle.System
        Me.cbb_parity.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbb_parity.FormattingEnabled = True
        Me.cbb_parity.Items.AddRange(New Object() {"None"})
        Me.cbb_parity.Location = New System.Drawing.Point(116, 103)
        Me.cbb_parity.Name = "cbb_parity"
        Me.cbb_parity.Size = New System.Drawing.Size(97, 21)
        Me.cbb_parity.TabIndex = 4
        Me.cbb_parity.Text = "None"
        '
        'cbb_stopbit
        '
        Me.cbb_stopbit.FlatStyle = System.Windows.Forms.FlatStyle.System
        Me.cbb_stopbit.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbb_stopbit.FormattingEnabled = True
        Me.cbb_stopbit.Items.AddRange(New Object() {"One Stop Bit"})
        Me.cbb_stopbit.Location = New System.Drawing.Point(116, 79)
        Me.cbb_stopbit.Name = "cbb_stopbit"
        Me.cbb_stopbit.Size = New System.Drawing.Size(97, 21)
        Me.cbb_stopbit.TabIndex = 3
        Me.cbb_stopbit.Text = "One Stop Bit"
        '
        'cbb_baudrate
        '
        Me.cbb_baudrate.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbb_baudrate.FormattingEnabled = True
        Me.cbb_baudrate.Location = New System.Drawing.Point(116, 55)
        Me.cbb_baudrate.Name = "cbb_baudrate"
        Me.cbb_baudrate.Size = New System.Drawing.Size(97, 21)
        Me.cbb_baudrate.TabIndex = 2
        '
        'cbb_comport
        '
        Me.cbb_comport.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbb_comport.FormattingEnabled = True
        Me.cbb_comport.Location = New System.Drawing.Point(116, 31)
        Me.cbb_comport.Name = "cbb_comport"
        Me.cbb_comport.Size = New System.Drawing.Size(97, 21)
        Me.cbb_comport.TabIndex = 1
        '
        'btn_Connect
        '
        Me.btn_Connect.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_Connect.Location = New System.Drawing.Point(11, 21)
        Me.btn_Connect.Name = "btn_Connect"
        Me.btn_Connect.Size = New System.Drawing.Size(82, 33)
        Me.btn_Connect.TabIndex = 2
        Me.btn_Connect.Text = "Con&nect"
        Me.btn_Connect.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Panel1)
        Me.GroupBox2.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox2.Location = New System.Drawing.Point(12, 202)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(230, 96)
        Me.GroupBox2.TabIndex = 84
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Command"
        '
        'Panel1
        '
        Me.Panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.Panel1.Controls.Add(Me.btn_Connect)
        Me.Panel1.Controls.Add(Me.btn_DisConnect)
        Me.Panel1.Location = New System.Drawing.Point(6, 15)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(218, 74)
        Me.Panel1.TabIndex = 13
        '
        'btn_DisConnect
        '
        Me.btn_DisConnect.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_DisConnect.Location = New System.Drawing.Point(108, 19)
        Me.btn_DisConnect.Name = "btn_DisConnect"
        Me.btn_DisConnect.Size = New System.Drawing.Size(82, 33)
        Me.btn_DisConnect.TabIndex = 5
        Me.btn_DisConnect.Text = "Disconnect"
        Me.btn_DisConnect.UseVisualStyleBackColor = True
        '
        'btnSend
        '
        Me.btnSend.Location = New System.Drawing.Point(301, 240)
        Me.btnSend.Name = "btnSend"
        Me.btnSend.Size = New System.Drawing.Size(86, 28)
        Me.btnSend.TabIndex = 92
        Me.btnSend.Text = "Send"
        Me.btnSend.UseVisualStyleBackColor = True
        '
        'btnClear
        '
        Me.btnClear.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnClear.Location = New System.Drawing.Point(400, 240)
        Me.btnClear.Name = "btnClear"
        Me.btnClear.Size = New System.Drawing.Size(86, 28)
        Me.btnClear.TabIndex = 90
        Me.btnClear.Text = "Clear"
        Me.btnClear.UseVisualStyleBackColor = True
        '
        'txtSend
        '
        Me.txtSend.Location = New System.Drawing.Point(6, 28)
        Me.txtSend.Multiline = True
        Me.txtSend.Name = "txtSend"
        Me.txtSend.Size = New System.Drawing.Size(232, 21)
        Me.txtSend.TabIndex = 91
        '
        'cbb_shiftspeed
        '
        Me.cbb_shiftspeed.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cbb_shiftspeed.FormattingEnabled = True
        Me.cbb_shiftspeed.Location = New System.Drawing.Point(81, 62)
        Me.cbb_shiftspeed.Name = "cbb_shiftspeed"
        Me.cbb_shiftspeed.Size = New System.Drawing.Size(86, 21)
        Me.cbb_shiftspeed.TabIndex = 93
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(6, 66)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(65, 13)
        Me.Label7.TabIndex = 94
        Me.Label7.Text = "Shift &Speed:"
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.rd_Right_to_Left)
        Me.GroupBox4.Controls.Add(Me.rd_Left_to_Right)
        Me.GroupBox4.Controls.Add(Me.rd_Still_Display)
        Me.GroupBox4.Location = New System.Drawing.Point(9, 89)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(105, 82)
        Me.GroupBox4.TabIndex = 95
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Shift Type"
        '
        'rd_Right_to_Left
        '
        Me.rd_Right_to_Left.AutoSize = True
        Me.rd_Right_to_Left.Location = New System.Drawing.Point(6, 59)
        Me.rd_Right_to_Left.Name = "rd_Right_to_Left"
        Me.rd_Right_to_Left.Size = New System.Drawing.Size(87, 17)
        Me.rd_Right_to_Left.TabIndex = 96
        Me.rd_Right_to_Left.Text = "Right To Left"
        Me.rd_Right_to_Left.UseVisualStyleBackColor = True
        '
        'rd_Left_to_Right
        '
        Me.rd_Left_to_Right.AutoSize = True
        Me.rd_Left_to_Right.Location = New System.Drawing.Point(6, 39)
        Me.rd_Left_to_Right.Name = "rd_Left_to_Right"
        Me.rd_Left_to_Right.Size = New System.Drawing.Size(87, 17)
        Me.rd_Left_to_Right.TabIndex = 95
        Me.rd_Left_to_Right.Text = "Left To Right"
        Me.rd_Left_to_Right.UseVisualStyleBackColor = True
        '
        'rd_Still_Display
        '
        Me.rd_Still_Display.AutoSize = True
        Me.rd_Still_Display.Checked = True
        Me.rd_Still_Display.Location = New System.Drawing.Point(6, 19)
        Me.rd_Still_Display.Name = "rd_Still_Display"
        Me.rd_Still_Display.Size = New System.Drawing.Size(78, 17)
        Me.rd_Still_Display.TabIndex = 97
        Me.rd_Still_Display.TabStop = True
        Me.rd_Still_Display.Text = "Still Display"
        Me.rd_Still_Display.UseVisualStyleBackColor = True
        '
        'GroupBox5
        '
        Me.GroupBox5.Controls.Add(Me.rd_Inverted)
        Me.GroupBox5.Controls.Add(Me.rd_Normal)
        Me.GroupBox5.Controls.Add(Me.rd_Blink)
        Me.GroupBox5.Location = New System.Drawing.Point(133, 89)
        Me.GroupBox5.Name = "GroupBox5"
        Me.GroupBox5.Size = New System.Drawing.Size(105, 83)
        Me.GroupBox5.TabIndex = 96
        Me.GroupBox5.TabStop = False
        Me.GroupBox5.Text = "Display Type"
        '
        'rd_Inverted
        '
        Me.rd_Inverted.AutoSize = True
        Me.rd_Inverted.Location = New System.Drawing.Point(6, 39)
        Me.rd_Inverted.Name = "rd_Inverted"
        Me.rd_Inverted.Size = New System.Drawing.Size(64, 17)
        Me.rd_Inverted.TabIndex = 2
        Me.rd_Inverted.Text = "Inverted"
        Me.rd_Inverted.UseVisualStyleBackColor = True
        '
        'rd_Normal
        '
        Me.rd_Normal.AutoSize = True
        Me.rd_Normal.Checked = True
        Me.rd_Normal.Location = New System.Drawing.Point(6, 19)
        Me.rd_Normal.Name = "rd_Normal"
        Me.rd_Normal.Size = New System.Drawing.Size(58, 17)
        Me.rd_Normal.TabIndex = 1
        Me.rd_Normal.TabStop = True
        Me.rd_Normal.Text = "Normal"
        Me.rd_Normal.UseVisualStyleBackColor = True
        '
        'rd_Blink
        '
        Me.rd_Blink.AutoSize = True
        Me.rd_Blink.Location = New System.Drawing.Point(6, 59)
        Me.rd_Blink.Name = "rd_Blink"
        Me.rd_Blink.Size = New System.Drawing.Size(48, 17)
        Me.rd_Blink.TabIndex = 0
        Me.rd_Blink.Text = "Blink"
        Me.rd_Blink.UseVisualStyleBackColor = True
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.GroupBox5)
        Me.GroupBox3.Controls.Add(Me.GroupBox4)
        Me.GroupBox3.Controls.Add(Me.Label7)
        Me.GroupBox3.Controls.Add(Me.cbb_shiftspeed)
        Me.GroupBox3.Controls.Add(Me.txtSend)
        Me.GroupBox3.Location = New System.Drawing.Point(248, 12)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(246, 183)
        Me.GroupBox3.TabIndex = 93
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Led Matrix Display Setting"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(507, 317)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.btnClear)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.btnSend)
        Me.Name = "Form1"
        Me.Text = "LED MATRIX"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.Panel1.ResumeLayout(False)
        Me.GroupBox4.ResumeLayout(False)
        Me.GroupBox4.PerformLayout()
        Me.GroupBox5.ResumeLayout(False)
        Me.GroupBox5.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents cbb_flow As System.Windows.Forms.ComboBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents cbb_databit As System.Windows.Forms.ComboBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents cbb_parity As System.Windows.Forms.ComboBox
    Friend WithEvents cbb_stopbit As System.Windows.Forms.ComboBox
    Friend WithEvents cbb_baudrate As System.Windows.Forms.ComboBox
    Friend WithEvents cbb_comport As System.Windows.Forms.ComboBox
    Friend WithEvents SerialPort1 As System.IO.Ports.SerialPort
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents btn_Connect As System.Windows.Forms.Button
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents btn_DisConnect As System.Windows.Forms.Button
    Friend WithEvents btnSend As System.Windows.Forms.Button
    Friend WithEvents btnClear As System.Windows.Forms.Button
    Friend WithEvents txtSend As System.Windows.Forms.TextBox
    Friend WithEvents cbb_shiftspeed As System.Windows.Forms.ComboBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents rd_Right_to_Left As System.Windows.Forms.RadioButton
    Friend WithEvents rd_Left_to_Right As System.Windows.Forms.RadioButton
    Friend WithEvents rd_Still_Display As System.Windows.Forms.RadioButton
    Friend WithEvents GroupBox5 As System.Windows.Forms.GroupBox
    Friend WithEvents rd_Inverted As System.Windows.Forms.RadioButton
    Friend WithEvents rd_Normal As System.Windows.Forms.RadioButton
    Friend WithEvents rd_Blink As System.Windows.Forms.RadioButton
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox

End Class
