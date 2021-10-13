
void pivot_points(){

    int time = iTime(NULL, PERIOD_D1, 0);
    double high = iHigh(NULL, PERIOD_D1, 1);
    double close = iClose(NULL, PERIOD_D1, 1);
    double low = iLow(NULL, PERIOD_D1, 1);
    double pivot = NormalizeDouble((high + low + close) / 3, 2);
    
    double r1 = NormalizeDouble((2 * pivot) - low, 2);
    double s1 = NormalizeDouble((2 * pivot) - high, 2);
    
    double r2 = NormalizeDouble((pivot - s1) + r1, 2);
    double s2 = NormalizeDouble(pivot - (r1 - s1), 2);
    
    double r3 = NormalizeDouble(high + 2 * (pivot - low), 2);
    double s3 = NormalizeDouble(low - 2 * (high - pivot), 2);
    
    ObjectDelete(0, "PIVOT");
    ObjectCreate(0, "PIVOT", OBJ_TREND, 0, time, pivot, time+86400, pivot);
    ObjectSetInteger(0, "PIVOT", OBJPROP_RAY_RIGHT, true);
    ObjectSetInteger(0, "PIVOT", OBJPROP_STYLE, 1);
    ObjectSetInteger(0, "PIVOT", OBJPROP_COLOR, clrGold);
    ObjectSetInteger(0, "PIVOT", OBJPROP_WIDTH, 3);
    
    ObjectDelete(0, "PIVOT_LABEL");
    ObjectCreate(0, "PIVOT_LABEL", OBJ_TEXT, 0, time, pivot - 0.2);
    ObjectSetString(0, "PIVOT_LABEL", OBJPROP_TEXT, "PIVOT");
    ObjectSetInteger(0, "PIVOT_LABEL", OBJPROP_COLOR, clrViolet);
    ObjectSetInteger(0, "PIVOT_LABEL", OBJPROP_FONTSIZE, 8);
    
    ObjectDelete(0, "R1");
    ObjectCreate(0, "R1", OBJ_TREND, 0, time, r1, time+86400, r1);
    ObjectSetInteger(0, "R1", OBJPROP_RAY_RIGHT, true);
    ObjectSetInteger(0, "R1", OBJPROP_STYLE, 1);
    ObjectSetInteger(0, "R1", OBJPROP_COLOR, clrDarkViolet);
    ObjectSetInteger(0, "R1", OBJPROP_WIDTH, 3);
    
    ObjectDelete(0, "R1_LABEL");
    ObjectCreate(0, "R1_LABEL", OBJ_TEXT, 0, time, r1 - 0.2);
    ObjectSetString(0, "R1_LABEL", OBJPROP_TEXT, "R1");
    ObjectSetInteger(0, "R1_LABEL", OBJPROP_COLOR, clrViolet);
    ObjectSetInteger(0, "R1_LABEL", OBJPROP_FONTSIZE, 8);

    ObjectDelete(0, "R2");
    ObjectCreate(0, "R2", OBJ_TREND, 0, time, r2, time+86400, r2);
    ObjectSetInteger(0, "R2", OBJPROP_RAY_RIGHT, true);
    ObjectSetInteger(0, "R2", OBJPROP_STYLE, 1);
    ObjectSetInteger(0, "R2", OBJPROP_COLOR, clrDarkViolet);
    ObjectSetInteger(0, "R2", OBJPROP_WIDTH, 3);
    
    ObjectDelete(0, "R2_LABEL");
    ObjectCreate(0, "R2_LABEL", OBJ_TEXT, 0, time, r2 - 0.2);
    ObjectSetString(0, "R2_LABEL", OBJPROP_TEXT, "R2");
    ObjectSetInteger(0, "R2_LABEL", OBJPROP_COLOR, clrViolet);
    ObjectSetInteger(0, "R2_LABEL", OBJPROP_FONTSIZE, 8);
    
    ObjectDelete(0, "R3");
    ObjectCreate(0, "R3", OBJ_TREND, 0, time, r3, time+86400, r3);
    ObjectSetInteger(0, "R3", OBJPROP_RAY_RIGHT, true);
    ObjectSetInteger(0, "R3", OBJPROP_STYLE, 1);
    ObjectSetInteger(0, "R3", OBJPROP_COLOR, clrDarkViolet);
    ObjectSetInteger(0, "R3", OBJPROP_WIDTH, 3);
    
    ObjectDelete(0, "R3_LABEL");
    ObjectCreate(0, "R3_LABEL", OBJ_TEXT, 0, time, r3 - 0.2);
    ObjectSetString(0, "R3_LABEL", OBJPROP_TEXT, "R3");
    ObjectSetInteger(0, "R3_LABEL", OBJPROP_COLOR, clrViolet);
    ObjectSetInteger(0, "R3_LABEL", OBJPROP_FONTSIZE, 8);
    

    ObjectDelete(0, "S1");
    ObjectCreate(0, "S1", OBJ_TREND, 0, time, s1, time+86400, s1);
    ObjectSetInteger(0, "S1", OBJPROP_RAY_RIGHT, true);
    ObjectSetInteger(0, "S1", OBJPROP_STYLE, 1);
    ObjectSetInteger(0, "S1", OBJPROP_COLOR, clrDarkViolet);
    ObjectSetInteger(0, "S1", OBJPROP_WIDTH, 3);
    
    ObjectDelete(0, "S1_LABEL");
    ObjectCreate(0, "S1_LABEL", OBJ_TEXT, 0, time, s1 - 0.2);
    ObjectSetString(0, "S1_LABEL", OBJPROP_TEXT, "S1");
    ObjectSetInteger(0, "S1_LABEL", OBJPROP_COLOR, clrViolet);
    ObjectSetInteger(0, "S1_LABEL", OBJPROP_FONTSIZE, 8);

    ObjectDelete(0, "S2");
    ObjectCreate(0, "S2", OBJ_TREND, 0, time, s2, time+86400, s2);
    ObjectSetInteger(0, "S2", OBJPROP_RAY_RIGHT, true);
    ObjectSetInteger(0, "S2", OBJPROP_STYLE, 1);
    ObjectSetInteger(0, "S2", OBJPROP_COLOR, clrDarkViolet);
    ObjectSetInteger(0, "S2", OBJPROP_WIDTH, 3);
    
    ObjectDelete(0, "S2_LABEL");
    ObjectCreate(0, "S2_LABEL", OBJ_TEXT, 0, time, s2 - 0.2);
    ObjectSetString(0, "S2_LABEL", OBJPROP_TEXT, "S2");
    ObjectSetInteger(0, "S2_LABEL", OBJPROP_COLOR, clrViolet);
    ObjectSetInteger(0, "S2_LABEL", OBJPROP_FONTSIZE, 8);
    
    ObjectDelete(0, "S3");
    ObjectCreate(0, "S3", OBJ_TREND, 0, time, s3, time+86400, s3);
    ObjectSetInteger(0, "S3", OBJPROP_RAY_RIGHT, true);
    ObjectSetInteger(0, "S3", OBJPROP_STYLE, 1);
    ObjectSetInteger(0, "S3", OBJPROP_COLOR, clrDarkViolet);
    ObjectSetInteger(0, "S3", OBJPROP_WIDTH, 3);
    
    ObjectDelete(0, "S3_LABEL");
    ObjectCreate(0, "S3_LABEL", OBJ_TEXT, 0, time, s3 - 0.2);
    ObjectSetString(0, "S3_LABEL", OBJPROP_TEXT, "S3");
    ObjectSetInteger(0, "S3_LABEL", OBJPROP_COLOR, clrViolet);
    ObjectSetInteger(0, "S3_LABEL", OBJPROP_FONTSIZE, 8);
}

datetime NewCandleTime = TimeCurrent();
bool isNewCandle(){
    if(NewCandleTime == iTime(Symbol(), 0, 0)) return false;
    else{
        NewCandleTime = iTime(Symbol(), 0, 0);
        return true;
    }
}

void OnTick(){
    if(isNewCandle()){
        pivot_points();
    }
}
