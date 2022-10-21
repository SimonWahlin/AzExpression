---
external help file: AzExpression-help.xml
Module Name: AzExpression
online version:
schema: 2.0.0
---

# New-AzGuid

## SYNOPSIS
Invoke the Azure ARM template function guid() locally in PowerShell

## SYNTAX

```
New-AzGuid [-InputStrings] <String[]> [<CommonParameters>]
```

## DESCRIPTION
Invoke the Azure ARM template function guid() locally in PowerShell

## EXAMPLES

### Example 1
```powershell
PS C:\> New-AzGuid -InputStrings 'test','value'
```

Returns the string `95b33d6a-06a0-5961-9b94-a0f6c648352b`

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

[https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/bicep-functions-string#guid](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/bicep-functions-string#guid)