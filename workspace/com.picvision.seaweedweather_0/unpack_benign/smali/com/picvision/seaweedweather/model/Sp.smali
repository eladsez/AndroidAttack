.class public Lcom/picvision/seaweedweather/model/Sp;
.super Ljava/lang/Object;
.source "Sp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xe7f4f948b281895L


# instance fields
.field private id:Ljava/lang/String;

.field private logoUrl:Ljava/lang/String;

.field private recommendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend;",
            ">;"
        }
    .end annotation
.end field

.field private spName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Sp;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Sp;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Sp;->recommendList:Ljava/util/List;

    return-object v0
.end method

.method public getSpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Sp;->spName:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Sp;->id:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "logoUrl"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Sp;->logoUrl:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setRecommendList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "recommendList":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend;>;"
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Sp;->recommendList:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setSpName(Ljava/lang/String;)V
    .locals 0
    .param p1, "spName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Sp;->spName:Ljava/lang/String;

    .line 27
    return-void
.end method
