.class public Lcom/picvision/seaweedweather/model/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picvision/seaweedweather/model/Weather$BriefInfo;,
        Lcom/picvision/seaweedweather/model/Weather$Explanation;
    }
.end annotation


# instance fields
.field private briefInfos:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

.field private cityId:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private explanations:[Lcom/picvision/seaweedweather/model/Weather$Explanation;

.field private realDirection:Ljava/lang/String;

.field private realForce:Ljava/lang/String;

.field private realHumidity:Ljava/lang/String;

.field private realPicId:Ljava/lang/String;

.field private realTemperature:Ljava/lang/String;

.field private realText:Ljava/lang/String;

.field private realTime:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->cityId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->cityName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realTime:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realText:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realPicId:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realTemperature:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realHumidity:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realDirection:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realForce:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->version:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->explanations:[Lcom/picvision/seaweedweather/model/Weather$Explanation;

    .line 20
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->briefInfos:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    .line 7
    return-void
.end method


# virtual methods
.method public getBriefInfos()[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->briefInfos:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->cityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getExplanations()[Lcom/picvision/seaweedweather/model/Weather$Explanation;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->explanations:[Lcom/picvision/seaweedweather/model/Weather$Explanation;

    return-object v0
.end method

.method public getRealDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getRealForce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realForce:Ljava/lang/String;

    return-object v0
.end method

.method public getRealHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realHumidity:Ljava/lang/String;

    return-object v0
.end method

.method public getRealPicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realPicId:Ljava/lang/String;

    return-object v0
.end method

.method public getRealTemperature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realTemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getRealText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realText:Ljava/lang/String;

    return-object v0
.end method

.method public getRealTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->realTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBriefInfos([Lcom/picvision/seaweedweather/model/Weather$BriefInfo;)V
    .locals 0
    .param p1, "briefInfos"    # [Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->briefInfos:[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    .line 44
    return-void
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->cityId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->cityName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setExplanations([Lcom/picvision/seaweedweather/model/Weather$Explanation;)V
    .locals 0
    .param p1, "explanations"    # [Lcom/picvision/seaweedweather/model/Weather$Explanation;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->explanations:[Lcom/picvision/seaweedweather/model/Weather$Explanation;

    .line 36
    return-void
.end method

.method public setRealDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "realDirection"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->realDirection:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setRealForce(Ljava/lang/String;)V
    .locals 0
    .param p1, "realForce"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->realForce:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setRealHumidity(Ljava/lang/String;)V
    .locals 0
    .param p1, "realHumidity"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->realHumidity:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRealPicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "realPicId"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->realPicId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setRealTemperature(Ljava/lang/String;)V
    .locals 0
    .param p1, "realTemperature"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->realTemperature:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setRealText(Ljava/lang/String;)V
    .locals 0
    .param p1, "realText"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->realText:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setRealTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "realTime"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->realTime:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather;->version:Ljava/lang/String;

    .line 28
    return-void
.end method
