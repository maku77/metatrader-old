//+------------------------------------------------------------------+
//|                                                     DebugLog.mqh |
//|                                                           maku77 |
//|                                        https://maku77.github.io/ |
//+------------------------------------------------------------------+
#property copyright "maku77"
#property link      "https://maku77.github.io/"
#property strict

#ifdef _DEBUG
    #define DEBUG_LOG(x) DebugLog(x)

    #include <Arrays\ArrayString.mqh>
    
    void DebugLog(string msg) {
        static const int MAX_LINES = 10;
        static CArrayString lines;
        int len = lines.Total();
        if (len > MAX_LINES - 1) {
            lines.Delete(0);
            --len;
        }
        lines.Add(msg);
        string text = "";
        for (int i = len; i >= 0; --i) {
            text += lines.At(i) + "\n";
        }
        Comment(text);
    }
#else
    #define DEBUG_LOG(x)
#endif

