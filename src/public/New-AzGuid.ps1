function New-AzGuid {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string[]]$InputStrings
    )

    $parameters = [Azure.Deployments.Expression.Expressions.FunctionArgument[]]::new($InputStrings.Count)
    for ($i = 0; $i -lt $parameters.Count; $i++) {
        $parameters[$i] = [Newtonsoft.Json.Linq.JValue]::new($InputStrings[$i])
    }

    $result = $Script:Functions.EvaluateFunction(
        "guid",
        $parameters,
        [Azure.Deployments.Expression.Expressions.ExpressionEvaluationContext]::new()
    )

    return $result.ToString()
}