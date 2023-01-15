.class public Lcom/picvision/seaweedweather/model/Recommend;
.super Ljava/lang/Object;
.source "Recommend.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picvision/seaweedweather/model/Recommend$RPic;
    }
.end annotation


# instance fields
.field private RId:Ljava/lang/String;

.field private RName:Ljava/lang/String;

.field private pics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend$RPic;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend$RPic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Recommend;->pics:Ljava/util/List;

    return-object v0
.end method

.method public getRId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Recommend;->RId:Ljava/lang/String;

    return-object v0
.end method

.method public getRName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Recommend;->RName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Recommend;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setPics(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend$RPic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "pics":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend$RPic;>;"
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Recommend;->pics:Ljava/util/List;

    .line 51
    return-void
.end method

.method public setRId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Recommend;->RId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setRName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Recommend;->RName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Recommend;->version:Ljava/lang/String;

    .line 24
    return-void
.end method
