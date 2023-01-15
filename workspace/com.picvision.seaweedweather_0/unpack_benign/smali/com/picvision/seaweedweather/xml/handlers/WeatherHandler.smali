.class public Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WeatherHandler.java"


# static fields
.field private static final BRIEF_INFO:Ljava/lang/String; = "briefinfo"

.field private static final CITY:Ljava/lang/String; = "city"

.field private static final DATE:Ljava/lang/String; = "date"

.field private static final DAY:Ljava/lang/String; = "day"

.field private static final DAY_WEATHER:B = 0x1t

.field private static final DETAIL:Ljava/lang/String; = "detail"

.field private static final DIRECTION:Ljava/lang/String; = "direction"

.field private static final EXPLANATION:Ljava/lang/String; = "explanation"

.field private static final FORCE:Ljava/lang/String; = "force"

.field private static final HUMIDITY:Ljava/lang/String; = "humidity"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LEVEL:Ljava/lang/String; = "level"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NIGHT:Ljava/lang/String; = "night"

.field private static final NIGHT_WEATHER:B = 0x2t

.field private static final PIC:Ljava/lang/String; = "pic"

.field private static final PICID:Ljava/lang/String; = "picId"

.field private static final REAL_TIME_INFORMATION:Ljava/lang/String; = "real_time_information"

.field private static final REAL_WEATHER:B = 0x0t

.field private static final TEMPERATURE:Ljava/lang/String; = "temperature"

.field private static final TEXT:Ljava/lang/String; = "text"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final WEATHER:Ljava/lang/String; = "weather"

.field private static final WEATHER_INFO:Ljava/lang/String; = "weatherInfo"

.field private static final WIND:Ljava/lang/String; = "wind"


# instance fields
.field private briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

.field private briefInfos:Ljava/util/Vector;

.field private explanation:Lcom/picvision/seaweedweather/model/Weather$Explanation;

.field private explanations:Ljava/util/Vector;

.field private realWeather:B

.field private realWind:B

.field private temp:Ljava/lang/String;

.field private weather:Lcom/picvision/seaweedweather/model/Weather;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 48
    iput-byte v1, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->realWeather:B

    .line 49
    iput-byte v1, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->realWind:B

    .line 51
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->temp:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    .line 53
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanations:Ljava/util/Vector;

    .line 54
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfos:Ljava/util/Vector;

    .line 55
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanation:Lcom/picvision/seaweedweather/model/Weather$Explanation;

    .line 56
    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    .line 19
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 64
    if-lez p3, :cond_0

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->temp:Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 71
    const-string v0, "time"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setRealTime(Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v0, "explanation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanations:Ljava/util/Vector;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanation:Lcom/picvision/seaweedweather/model/Weather$Explanation;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 76
    iput-object v2, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanation:Lcom/picvision/seaweedweather/model/Weather$Explanation;

    goto :goto_0

    .line 77
    :cond_2
    const-string v0, "pic"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanation:Lcom/picvision/seaweedweather/model/Weather$Explanation;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$Explanation;->setPic(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_3
    const-string v0, "level"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanation:Lcom/picvision/seaweedweather/model/Weather$Explanation;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$Explanation;->setLevel(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_4
    const-string v0, "detail"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanation:Lcom/picvision/seaweedweather/model/Weather$Explanation;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$Explanation;->setDetail(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_5
    const-string v0, "briefinfo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfos:Ljava/util/Vector;

    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 85
    iput-object v2, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    goto :goto_0

    .line 86
    :cond_6
    const-string v0, "weatherInfo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    .line 88
    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanations:Ljava/util/Vector;

    invoke-static {v1}, Lcom/picvision/seaweedweather/utils/Util;->vectorToExplanations(Ljava/util/Vector;)[Lcom/picvision/seaweedweather/model/Weather$Explanation;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setExplanations([Lcom/picvision/seaweedweather/model/Weather$Explanation;)V

    .line 89
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    .line 90
    iget-object v1, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfos:Ljava/util/Vector;

    invoke-static {v1}, Lcom/picvision/seaweedweather/utils/Util;->vectorToBriefInfos(Ljava/util/Vector;)[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setBriefInfos([Lcom/picvision/seaweedweather/model/Weather$BriefInfo;)V

    .line 91
    iput-object v2, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanations:Ljava/util/Vector;

    .line 92
    iput-object v2, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfos:Ljava/util/Vector;

    .line 93
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public getWeather()Lcom/picvision/seaweedweather/model/Weather;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v6, "temperature"

    const-string v5, "picId"

    const-string v2, "id"

    const-string v4, "force"

    const-string v3, "direction"

    .line 99
    const-string v0, "version"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanations:Ljava/util/Vector;

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfos:Ljava/util/Vector;

    .line 102
    new-instance v0, Lcom/picvision/seaweedweather/model/Weather;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/model/Weather;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    .line 103
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    const-string v1, "value"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setVersion(Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v0, "city"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    const-string v1, "id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setCityId(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setCityName(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "real_time_information"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->realWeather:B

    .line 109
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->realWind:B

    goto :goto_0

    .line 110
    :cond_3
    const-string v0, "weather"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iget-byte v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->realWeather:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    const-string v1, "text"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setRealText(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    const-string v1, "picId"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setRealPicId(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    const-string v1, "temperature"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setRealTemperature(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    const-string v1, "humidity"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setRealHumidity(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "text"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setDayText(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "picId"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setDayPicId(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "temperature"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setDayTemperature(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "text"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setNightText(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "picId"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setNightPicId(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "temperature"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setNightTemperature(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_4
    const-string v0, "wind"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    iget-byte v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->realWind:B

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    const-string v1, "direction"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setRealDirection(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->weather:Lcom/picvision/seaweedweather/model/Weather;

    const-string v1, "force"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather;->setRealForce(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :pswitch_4
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "direction"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setDayDirection(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "force"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setDayForce(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :pswitch_5
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "direction"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setNightDirection(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "force"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setNightForce(Ljava/lang/String;)V

    .line 142
    const-string v0, "RealWind"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "direction"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "force"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    :cond_5
    const-string v0, "explanation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    new-instance v0, Lcom/picvision/seaweedweather/model/Weather$Explanation;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/model/Weather$Explanation;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanation:Lcom/picvision/seaweedweather/model/Weather$Explanation;

    .line 147
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->explanation:Lcom/picvision/seaweedweather/model/Weather$Explanation;

    const-string v1, "id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$Explanation;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_6
    const-string v0, "briefinfo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 149
    new-instance v0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    .line 150
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "id"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setId(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->briefInfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    const-string v1, "date"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->setDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_7
    const-string v0, "day"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 153
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->realWeather:B

    .line 154
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->realWind:B

    goto/16 :goto_0

    .line 155
    :cond_8
    const-string v0, "night"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->realWeather:B

    .line 157
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->realWind:B

    goto/16 :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
