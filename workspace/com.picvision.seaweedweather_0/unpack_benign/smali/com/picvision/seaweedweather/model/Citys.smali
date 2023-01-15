.class public Lcom/picvision/seaweedweather/model/Citys;
.super Ljava/lang/Object;
.source "Citys.java"


# instance fields
.field private cityId:I

.field private cityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "cityId"    # I
    .param p2, "cityName"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/picvision/seaweedweather/model/Citys;->cityId:I

    .line 38
    iput-object p2, p0, Lcom/picvision/seaweedweather/model/Citys;->cityName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getCityId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/picvision/seaweedweather/model/Citys;->cityId:I

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Citys;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public setCityId(I)V
    .locals 0
    .param p1, "cityId"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/picvision/seaweedweather/model/Citys;->cityId:I

    .line 47
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Citys;->cityName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picvision/seaweedweather/model/Citys;->cityId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ",id  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/picvision/seaweedweather/model/Citys;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  name \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
