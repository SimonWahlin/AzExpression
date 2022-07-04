---
external help file: AzExpression-help.xml
Module Name: AzExpression
online version:
schema: 2.0.0
---

# New-AzUniqueString

## SYNOPSIS
Invoke the Azure ARM template function uniqueString() locally in PowerShell

## SYNTAX

```
New-AzUniqueString [-InputStrings] <String[]> [<CommonParameters>]
```

## DESCRIPTION
Invoke the Azure ARM template function uniqueString() locally in PowerShell

## EXAMPLES

### Example 1
```powershell
PS C:\> New-AzUniqueString -InputStrings 'test','value'
```

Returns the string `bhxq2thzm5dym`

## PARAMETERS

### -InputStrings
Strings used as a seed to generate a unique string.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
