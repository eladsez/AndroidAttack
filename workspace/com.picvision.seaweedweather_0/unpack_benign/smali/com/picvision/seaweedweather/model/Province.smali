.class public Lcom/picvision/seaweedweather/model/Province;
.super Ljava/lang/Object;
.source "Province.java"


# instance fields
.field private citys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Citys;",
            ">;"
        }
    .end annotation
.end field

.field private provinceEnName:Ljava/lang/String;

.field private provinceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "provinceName"    # Ljava/lang/String;
    .param p2, "provinceEnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Citys;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "citys":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Citys;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Province;->provinceName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/picvision/seaweedweather/model/Province;->provinceEnName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/picvision/seaweedweather/model/Province;->citys:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public getCitys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Citys;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Province;->citys:Ljava/util/List;

    return-object v0
.end method

.method public getProvinceEnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Province;->provinceEnName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Province;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method public setCitys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Citys;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "citys":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Citys;>;"
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Province;->citys:Ljava/util/List;

    .line 76
    return-void
.end method

.method public setProvinceEnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "provinceEnName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Province;->provinceEnName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setProvinceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "provinceName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/picvision/seaweedweather/model/Province;->provinceName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/picvision/seaweedweather/model/Province;->provinceName:Ljava/lang/String;

    return-object v0
.end method
