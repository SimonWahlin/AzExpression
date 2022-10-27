function New-AzUniqueString {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [AllowEmptyString()]
        [string[]]$InputStrings
    )
    
    $parameters = [Azure.Deployments.Expression.Expressions.FunctionArgument[]]::new($InputStrings.Count)
    for ($i = 0; $i -lt $parameters.Count; $i++) {
        $parameters[$i] = [Newtonsoft.Json.Linq.JValue]::new($InputStrings[$i])
    }

    $result = $Script:Functions.EvaluateFunction(
        "uniqueString", 
        $parameters, 
        [Azure.Deployments.Expression.Expressions.ExpressionEvaluationContext]::new()
    )

    return $result.ToString()
}