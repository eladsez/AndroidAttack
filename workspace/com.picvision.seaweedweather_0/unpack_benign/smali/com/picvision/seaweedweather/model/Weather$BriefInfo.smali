.class public final Lcom/picvision/seaweedweather/model/Weather$BriefInfo;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BriefInfo"
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private dayDirection:Ljava/lang/String;

.field private dayForce:Ljava/lang/String;

.field private dayPicId:Ljava/lang/String;

.field private dayTemperature:Ljava/lang/String;

.field private dayText:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private nightDirection:Ljava/lang/String;

.field private nightForce:Ljava/lang/String;

.field private nightPicId:Ljava/lang/String;

.field private nightTemperature:Ljava/lang/String;

.field private nightText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->id:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->date:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayText:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayPicId:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayTemperature:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayDirection:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayForce:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightText:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightPicId:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightTemperature:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightDirection:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightForce:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDayDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getDayForce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayForce:Ljava/lang/String;

    return-object v0
.end method

.method public getDayPicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayPicId:Ljava/lang/String;

    return-object v0
.end method

.method public getDayTemperature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayTemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getDayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNightDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getNightForce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightForce:Ljava/lang/String;

    return-object v0
.end method

.method public getNightPicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightPicId:Ljava/lang/String;

    return-object v0
.end method

.method public getNightTemperature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightTemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getNightText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightText:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->date:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setDayDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "dayDirection"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayDirection:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setDayForce(Ljava/lang/String;)V
    .locals 0
    .param p1, "dayForce"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayForce:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setDayPicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dayPicId"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayPicId:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setDayTemperature(Ljava/lang/String;)V
    .locals 0
    .param p1, "dayTemperature"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayTemperature:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setDayText(Ljava/lang/String;)V
    .locals 0
    .param p1, "dayText"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->dayText:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->id:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setNightDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "nightDirection"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightDirection:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setNightForce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nightForce"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightForce:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setNightPicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "nightPicId"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightPicId:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setNightTemperature(Ljava/lang/String;)V
    .locals 0
    .param p1, "nightTemperature"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightTemperature:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setNightText(Ljava/lang/String;)V
    .locals 0
    .param p1, "nightText"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;->nightText:Ljava/lang/String;

    .line 212
    return-void
.end method
