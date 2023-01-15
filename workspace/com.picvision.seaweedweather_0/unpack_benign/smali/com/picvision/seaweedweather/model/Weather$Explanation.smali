.class public final Lcom/picvision/seaweedweather/model/Weather$Explanation;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Explanation"
.end annotation


# instance fields
.field private detail:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private pic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->id:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->pic:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->level:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->detail:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->detail:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->id:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->level:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "pic"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Weather$Explanation;->pic:Ljava/lang/String;

    .line 134
    return-void
.end method
