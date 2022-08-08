grammar Excel;
fragment ExtendedChar: [\p{L}];
fragment ValidNamedRangeChar: [0-9\\_.?€] | ExtendedChar;
fragment WordChar: ExtendedChar | [0-9] | '_';
fragment QuotedSheetChar: ~['*[\]\\:/?];
fragment SheetChar: ~[();{}#"=<>&+\-/^%,'*[\]\\:?];
EXCEL_FUNCTION: ('ABS' | 'ACCRINT' | 'ACCRINTM' | 'ACOS' | 'ACOSH' | 'ACOT' | 'ACOTH' | 'ADDRESS' | 'AGGREGATE' | 'AMORDEGRC' | 'AMORLINC' | 'AND' | 'ARABIC' | 'AREAS' | 'ARRAYTOTEXT' | 'ASC' | 'ASIN' | 'ASINH' | 'ATAN' | 'ATAN2' | 'ATANH' | 'AVEDEV' | 'AVERAGE' | 'AVERAGEA' | 'AVERAGEIF' | 'AVERAGEIFS' | 'BAHTTEXT' | 'BASE' | 'BESSELI' | 'BESSELJ' | 'BESSELK' | 'BESSELY' | 'BETA.DIST' | 'BETA.INV' | 'BETADIST' | 'BETAINV' | 'BIN2DEC' | 'BIN2HEX' | 'BIN2OCT' | 'BINOM.DIST' | 'BINOM.DIST.RANGE' | 'BINOM.INV' | 'BINOMDIST' | 'BITAND' | 'BITLSHIFT' | 'BITOR' | 'BITRSHIFT' | 'BITXOR' | 'CALL' | 'CEILING' | 'CEILING.MATH' | 'CEILING.PRECISE' | 'CELL' | 'CHAR' | 'CHIDIST' | 'CHIINV' | 'CHISQ.DIST' | 'CHISQ.DIST.RT' | 'CHISQ.INV' | 'CHISQ.INV.RT' | 'CHISQ.TEST' | 'CHITEST' | 'CLEAN' | 'CODE' | 'COLUMN' | 'COLUMNS' | 'COMBIN' | 'COMBINA' | 'COMPLEX' | 'CONCAT' | 'CONCATENATE' | 'CONFIDENCE' | 'CONFIDENCE.NORM' | 'CONFIDENCE.T' | 'CONVERT' | 'CORREL' | 'COS' | 'COSH' | 'COT' | 'COTH' | 'COUNT' | 'COUNTA' | 'COUNTBLANK' | 'COUNTIF' | 'COUNTIFS' | 'COUPDAYBS' | 'COUPDAYS' | 'COUPDAYSNC' | 'COUPNCD' | 'COUPNUM' | 'COUPPCD' | 'COVAR' | 'COVARIANCE.P' | 'COVARIANCE.S' | 'CRITBINOM' | 'CSC' | 'CSCH' | 'CUBEKPIMEMBER' | 'CUBEMEMBER' | 'CUBEMEMBERPROPERTY' | 'CUBERANKEDMEMBER' | 'CUBESET' | 'CUBESETCOUNT' | 'CUBEVALUE' | 'CUMIPMT' | 'CUMPRINC' | 'DATE' | 'DATEDIF' | 'DATEVALUE' | 'DAVERAGE' | 'DAY' | 'DAYS' | 'DAYS360' | 'DB' | 'DBCS' | 'DCOUNT' | 'DCOUNTA' | 'DDB' | 'DEC2BIN' | 'DEC2HEX' | 'DEC2OCT' | 'DECIMAL' | 'DEGREES' | 'DELTA' | 'DEVSQ' | 'DGET' | 'DISC' | 'DMAX' | 'DMIN' | 'DOLLAR' | 'DOLLARDE' | 'DOLLARFR' | 'DPRODUCT' | 'DSTDEV' | 'DSTDEVP' | 'DSUM' | 'DURATION' | 'DVAR' | 'DVARP' | 'EDATE' | 'EFFECT' | 'ENCODEURL' | 'EOMONTH' | 'ERF' | 'ERF.PRECISE' | 'ERFC' | 'ERFC.PRECISE' | 'ERROR.TYPE' | 'EUROCONVERT' | 'EVEN' | 'EXACT' | 'EXP' | 'EXPON.DIST' | 'EXPONDIST' | 'F.DIST' | 'F.DIST.RT' | 'F.INV' | 'F.INV.RT' | 'F.TEST' | 'FACT' | 'FACTDOUBLE' | 'FALSE' | 'FDIST' | 'FILTER' | 'FILTERXML' | 'FIND' | 'FINDB' | 'FINV' | 'FISHER' | 'FISHERINV' | 'FIXED' | 'FLOOR' | 'FLOOR.MATH' | 'FLOOR.PRECISE' | 'FORECAST' | 'FORECAST.ETS' | 'FORECAST.ETS.CONFINT' | 'FORECAST.ETS.SEASONALITY' | 'FORECAST.ETS.STAT' | 'FORECAST.LINEAR' | 'FORMULATEXT' | 'FREQUENCY' | 'FTEST' | 'FV' | 'FVSCHEDULE' | 'GAMMA' | 'GAMMA.DIST' | 'GAMMA.INV' | 'GAMMADIST' | 'GAMMAINV' | 'GAMMALN' | 'GAMMALN.PRECISE' | 'GAUSS' | 'GCD' | 'GEOMEAN' | 'GESTEP' | 'GETPIVOTDATA' | 'GROWTH' | 'HARMEAN' | 'HEX2BIN' | 'HEX2DEC' | 'HEX2OCT' | 'HLOOKUP' | 'HOUR' | 'HYPERLINK' | 'HYPGEOM.DIST' | 'HYPGEOMDIST' | 'IFERROR' | 'IFNA' | 'IFS' | 'IMABS' | 'IMAGINARY' | 'IMARGUMENT' | 'IMCONJUGATE' | 'IMCOS' | 'IMCOSH' | 'IMCOT' | 'IMCSC' | 'IMCSCH' | 'IMDIV' | 'IMEXP' | 'IMLN' | 'IMLOG10' | 'IMLOG2' | 'IMPOWER' | 'IMPRODUCT' | 'IMREAL' | 'IMSEC' | 'IMSECH' | 'IMSIN' | 'IMSINH' | 'IMSQRT' | 'IMSUB' | 'IMSUM' | 'IMTAN' | 'INFO' | 'INT' | 'INTERCEPT' | 'INTRATE' | 'IPMT' | 'IRR' | 'ISBLANK' | 'ISERR' | 'ISERROR' | 'ISEVEN' | 'ISFORMULA' | 'ISLOGICAL' | 'ISNA' | 'ISNONTEXT' | 'ISNUMBER' | 'ISO.CEILING' | 'ISODD' | 'ISOWEEKNUM' | 'ISPMT' | 'ISREF' | 'ISTEXT' | 'JIS' | 'KURT' | 'LARGE' | 'LCM' | 'LEFT' | 'LEFTB' | 'LEN' | 'LENB' | 'LET' | 'LINEST' | 'LN' | 'LOG' | 'LOG10' | 'LOGEST' | 'LOGINV' | 'LOGNORM.DIST' | 'LOGNORM.INV' | 'LOGNORMDIST' | 'LOOKUP' | 'LOWER' | 'MATCH' | 'MAX' | 'MAXA' | 'MAXIFS' | 'MDETERM' | 'MDURATION' | 'MEDIAN' | 'MID' | 'MIDB' | 'MIN' | 'MINA' | 'MINIFS' | 'MINUTE' | 'MINVERSE' | 'MIRR' | 'MMULT' | 'MOD' | 'MODE' | 'MODE.MULT' | 'MODE.SNGL' | 'MONTH' | 'MROUND' | 'MULTINOMIAL' | 'MUNIT' | 'N' | 'NA' | 'NEGBINOM.DIST' | 'NEGBINOMDIST' | 'NETWORKDAYS' | 'NETWORKDAYS.INTL' | 'NOMINAL' | 'NORM.DIST' | 'NORM.INV' | 'NORM.S.DIST' | 'NORM.S.INV' | 'NORMDIST' | 'NORMINV' | 'NORMSDIST' | 'NORMSINV' | 'NOT' | 'NOW' | 'NPER' | 'NPV' | 'NUMBERVALUE' | 'OCT2BIN' | 'OCT2DEC' | 'OCT2HEX' | 'ODD' | 'ODDFPRICE' | 'ODDFYIELD' | 'ODDLPRICE' | 'ODDLYIELD' | 'OR' | 'PDURATION' | 'PEARSON' | 'PERCENTILE' | 'PERCENTILE.EXC' | 'PERCENTILE.INC' | 'PERCENTRANK' | 'PERCENTRANK.EXC' | 'PERCENTRANK.INC' | 'PERMUT' | 'PERMUTATIONA' | 'PHI' | 'PHONETIC' | 'PI' | 'PMT' | 'POISSON' | 'POISSON.DIST' | 'POWER' | 'PPMT' | 'PRICE' | 'PRICEDISC' | 'PRICEMAT' | 'PROB' | 'PRODUCT' | 'PROPER' | 'PV' | 'QUARTILE' | 'QUARTILE.EXC' | 'QUARTILE.INC' | 'QUOTIENT' | 'RADIANS' | 'RAND' | 'RANDARRAY' | 'RANDBETWEEN' | 'RANK' | 'RANK.AVG' | 'RANK.EQ' | 'RATE' | 'RECEIVED' | 'REGISTER.ID' | 'REPLACE' | 'REPLACEB' | 'REPT' | 'RIGHT' | 'RIGHTB' | 'ROMAN' | 'ROUND' | 'ROUNDDOWN' | 'ROUNDUP' | 'ROW' | 'ROWS' | 'RRI' | 'RSQ' | 'RTD' | 'SEARCH' | 'SEARCHB' | 'SEC' | 'SECH' | 'SECOND' | 'SEQUENCE' | 'SERIESSUM' | 'SHEET' | 'SHEETS' | 'SIGN' | 'SIN' | 'SINH' | 'SKEW' | 'SKEW.P' | 'SLN' | 'SLOPE' | 'SMALL' | 'SORT' | 'SORTBY' | 'SQRT' | 'SQRTPI' | 'STANDARDIZE' | 'STDEV' | 'STDEV.P' | 'STDEV.S' | 'STDEVA' | 'STDEVP' | 'STDEVPA' | 'STEYX' | 'SUBSTITUTE' | 'SUBTOTAL' | 'SUM' | 'SUMIF' | 'SUMIFS' | 'SUMPRODUCT' | 'SUMSQ' | 'SUMX2MY2' | 'SUMX2PY2' | 'SUMXMY2' | 'SWITCH' | 'SYD' | 'T' | 'T.DIST' | 'T.DIST.2T' | 'T.DIST.RT' | 'T.INV' | 'T.INV.2T' | 'T.TEST' | 'TAN' | 'TANH' | 'TBILLEQ' | 'TBILLPRICE' | 'TBILLYIELD' | 'TDIST' | 'TEXT' | 'TEXTJOIN' | 'TIME' | 'TIMEVALUE' | 'TINV' | 'TODAY' | 'TRANSPOSE' | 'TREND' | 'TRIM' | 'TRIMMEAN' | 'TRUE' | 'TRUNC' | 'TTEST' | 'TYPE' | 'UNICHAR' | 'UNICODE' | 'UNIQUE' | 'UPPER' | 'VALUE' | 'VALUETOTEXT' | 'VAR' | 'VAR.P' | 'VAR.S' | 'VARA' | 'VARP' | 'VARPA' | 'VDB' | 'VLOOKUP' | 'WEBSERVICE' | 'WEEKDAY' | 'WEEKNUM' | 'WEIBULL' | 'WEIBULL.DIST' | 'WORKDAY' | 'WORKDAY.INTL' | 'XIRR' | 'XLOOKUP' | 'XMATCH' | 'XNPV' | 'XOR' | 'YEAR' | 'YEARFRAC' | 'YIELD' | 'YIELDDISC' | 'YIELDMAT' | 'Z.TEST' | 'ZTEST') '(';
FILE: '[' ~('[' | ']')+ ']';
REF_FUNCTION: ('INDEX' | 'OFFSET' | 'INDIRECT') '(';
REF_FUNCTION_COND: ('IF' | 'CHOOSE' | 'INDIRECT') '(';
SHEET: SheetChar+ '!';
SHEET_QUOTED: (QuotedSheetChar | '"')+ '\'!';
UDF: ('_xll.')? [A-Z_\\] (ExtendedChar | [0-9_\\.])* '(';
NR_COMBINATION: ('TRUE' | 'FALSE' | [A-Z]+ [1-9][0-9]* ([A-Z\\_.?] | ExtendedChar)) ValidNamedRangeChar+;
CELL: '$'? [A-Z]+ '$'? [1-9][0-9]*;
MULTIPLE_SHEETS: SHEET+ ':' SHEET+ '!';
MULTIPLE_SHEETS_QUOTED: (QuotedSheetChar | '"')+ ':' (QuotedSheetChar | '"')+ '\'!';
BOOL: 'TRUE' | 'FALSE';
DDECALL: '\'' (~['] | '"')+ '\'';
ERROR: '#NULL!' | '#DIV/0!' | '#VALUE!' | '#NAME?' | '#NUM!' | '#N/A' |'#GETTING_DATA'|'#SPILL!';
ERROR_REF: '#REF!';
HORIZONTAL_RANGE: '$'? [0-9]+ ':' '$'? [0-9]+;
NUMBER: [0-9]+ '.'? [0-9]* ('e' [0-9]+)?;
STRING: '"' (~["] | '""')* '"';
VERTICAL_RANGE: '$'? [A-Z]+ ':' '$'? [A-Z]+;
RESERVED_NAME: '_xlnm.' [a-zA-Z_]+;
NR: ([_\\] | ExtendedChar) ValidNamedRangeChar*;
SR_COLUMN: (WordChar | '.')+;
start : formula | '=' formula | '{=' formula '}';
formula : constant | reference | functionCall | '(' formula ')' | constantArray | RESERVED_NAME;
constant : NUMBER | STRING | BOOL | ERROR;
functionCall : EXCEL_FUNCTION arguments ')' | unOpPrefix formula | formula '%' | formula binOp formula;
unOpPrefix : '+' | '-';
binOp : '+' | '-' | '*' | '/' | '^' | '&' | '<' | '>' | '=' | '<=' | '>=' | '<>';
arguments : argument ( ',' argument )*;
argument : formula;
reference : referenceItem # Item
| ('(' reference ( ',' reference ) ')' | refFunctionName arguments ')' | reference ':' reference | reference ' ' reference) # ReferenceFunctionCall
| '(' reference ')' # ParenthesizedREference
| prefix referenceItem # PrefixedItem
| FILE '!' DDECALL # FileReference
;
referenceItem : CELL | namedRange | VERTICAL_RANGE | HORIZONTAL_RANGE | UDF arguments ')' | ERROR_REF | structuredReference;
prefix : SHEET | FILE SHEET | FILE '!' | MULTIPLE_SHEETS | FILE MULTIPLE_SHEETS | '\'' SHEET_QUOTED | '\'' FILE SHEET_QUOTED | '\'' MULTIPLE_SHEETS_QUOTED | '\'' FILE MULTIPLE_SHEETS_QUOTED;
refFunctionName : REF_FUNCTION | REF_FUNCTION_COND;
namedRange : NR | NR_COMBINATION;
structuredReference : sRElement | '[' sRExpression ']' | NR sRElement | NR '[' ']' | NR '[' sRExpression ']';
sRExpression : sRElement | sRElement (':' | ',') sRElement | sRElement ',' sRElement (':' | ',') sRElement | sRElement ',' sRElement ',' sRElement ':' sRElement;
sRElement : '[' (NR | SR_COLUMN) ']' | FILE;
constantArray : '{' arrayColumns '}';
arrayColumns : arrayRows ( ';' arrayRows )*;
arrayRows : arrayConst ( ',' arrayConst )*;
arrayConst : constant | unOpPrefix NUMBER | ERROR_REF;
