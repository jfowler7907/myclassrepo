VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ThisWorkbook"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True

Sub Easy_stock_ticker()

For Each ws In worksheets
ws.Select

'Create variables
Dim Ticker As String
Dim Total_Stock_Volume As Double
Total_Stock_Volume = 0
Dim Yearly_Change As Double
Dim Perc_Change As Double
Dim lrow As Long

'Find the last non-blank cell in a single row
lrow = Cells(Rows.Count, 1).End(xlUp).Row

'Keep track of each ticker in the summary table
Dim summary_table_row As Integer
summary_table_row = 2

'Insert column headers
Range("I1") = "Ticker"
Range("J1") = "Total Stock Volume"
Range("K1") = "Yearly Change"
Range("L1") = "Percentage Change"
Columns("I:L").AutoFit


'Loop through all tickers
For i = 2 To lrow

'Verify we are still counting the same ticker
If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then

'Set the Ticker symbol
Ticker = Cells(i, 1).Value

'Add to the Volume
Total_Stock_Volume = Total_Stock_Volume + Cells(i, 7)

'Print the Ticker in the Ticker Table
Range("I" & summary_table_row).Value = Ticker

'Print the Ticker volume to the summary table
Range("J" & summary_table_row).Value = Total_Stock_Volume

'Add one to the Ticker Table
summary_table_row = summary_table_row + 1

'Reset the volume
Total_Stock_Volume = 0

'Yearly change closing-opened
End_Year_Price = Cells(i, 6).Value
Yearly_Change = End_Year_Price - Open_Year_Price
Range("K" & summary_table_row).Value = Yearly_Change

'Yearly percent change
Open_Year_Price = Cells(i, 3).Value
Perc_Change = (Yearly_Change / Open_Year_Price) * 100
Range("L" & summary_table_row).Value = Perc_Change

'Put yearly percent change in correct format
Range("L" & summary_table_row).NumberFormat = "0.00%"

'If the cell immediately following a row is the same ticker
Else

'Add to the volume
Total_Stock_Volume = Total_Stock_Volume + Cells(i, 7).Value

End If

Next i

Next ws

End Sub
