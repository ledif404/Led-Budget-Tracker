Add-Type -AssemblyName System.Drawing

$bgColor = [System.Drawing.Color]::FromArgb(45,115,91)
$fontFamily = 'Segoe UI'

function Save-Icon($filename, $size, $fontSize) {
    $bmp = New-Object System.Drawing.Bitmap $size, $size
    $g = [System.Drawing.Graphics]::FromImage($bmp)
    $g.Clear($bgColor)
    $font = New-Object System.Drawing.Font($fontFamily, $fontSize, [System.Drawing.FontStyle]::Bold)
    $brush = [System.Drawing.Brushes]::White
    $sf = New-Object System.Drawing.StringFormat
    $sf.Alignment = [System.Drawing.StringAlignment]::Center
    $sf.LineAlignment = [System.Drawing.StringAlignment]::Center
    $g.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::AntiAliasGridFit
    $rect = New-Object System.Drawing.RectangleF 0, 0, $size, $size
    $g.DrawString('LED', $font, $brush, $rect, $sf)
    $bmp.Save($filename, [System.Drawing.Imaging.ImageFormat]::Png)
    $g.Dispose()
    $bmp.Dispose()
}

Save-Icon 'icon-192.png' 192 48
Save-Icon 'icon-512.png' 512 160
