.class public final enum Lorg/hermit/geo/GeoCalculator$Algorithm;
.super Ljava/lang/Enum;
.source "GeoCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/geo/GeoCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/hermit/geo/GeoCalculator$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANDOYER:Lorg/hermit/geo/GeoCalculator$Algorithm;

.field private static final synthetic ENUM$VALUES:[Lorg/hermit/geo/GeoCalculator$Algorithm;

.field public static final enum HAVERSINE:Lorg/hermit/geo/GeoCalculator$Algorithm;

.field public static final enum VINCENTY:Lorg/hermit/geo/GeoCalculator$Algorithm;


# instance fields
.field private calculator:Lorg/hermit/geo/GeoCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lorg/hermit/geo/GeoCalculator$Algorithm;

    const-string v1, "HAVERSINE"

    invoke-direct {v0, v1, v2}, Lorg/hermit/geo/GeoCalculator$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/geo/GeoCalculator$Algorithm;->HAVERSINE:Lorg/hermit/geo/GeoCalculator$Algorithm;

    .line 48
    new-instance v0, Lorg/hermit/geo/GeoCalculator$Algorithm;

    const-string v1, "ANDOYER"

    invoke-direct {v0, v1, v3}, Lorg/hermit/geo/GeoCalculator$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/geo/GeoCalculator$Algorithm;->ANDOYER:Lorg/hermit/geo/GeoCalculator$Algorithm;

    .line 51
    new-instance v0, Lorg/hermit/geo/GeoCalculator$Algorithm;

    const-string v1, "VINCENTY"

    invoke-direct {v0, v1, v4}, Lorg/hermit/geo/GeoCalculator$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/geo/GeoCalculator$Algorithm;->VINCENTY:Lorg/hermit/geo/GeoCalculator$Algorithm;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/hermit/geo/GeoCalculator$Algorithm;

    sget-object v1, Lorg/hermit/geo/GeoCalculator$Algorithm;->HAVERSINE:Lorg/hermit/geo/GeoCalculator$Algorithm;

    aput-object v1, v0, v2

    sget-object v1, Lorg/hermit/geo/GeoCalculator$Algorithm;->ANDOYER:Lorg/hermit/geo/GeoCalculator$Algorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/hermit/geo/GeoCalculator$Algorithm;->VINCENTY:Lorg/hermit/geo/GeoCalculator$Algorithm;

    aput-object v1, v0, v4

    sput-object v0, Lorg/hermit/geo/GeoCalculator$Algorithm;->ENUM$VALUES:[Lorg/hermit/geo/GeoCalculator$Algorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/geo/GeoCalculator$Algorithm;->calculator:Lorg/hermit/geo/GeoCalculator;

    .line 43
    return-void
.end method

.method static synthetic access$2(Lorg/hermit/geo/GeoCalculator$Algorithm;Lorg/hermit/geo/GeoCalculator;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/hermit/geo/GeoCalculator$Algorithm;->calculator:Lorg/hermit/geo/GeoCalculator;

    return-void
.end method

.method static synthetic access$3(Lorg/hermit/geo/GeoCalculator$Algorithm;)Lorg/hermit/geo/GeoCalculator;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/hermit/geo/GeoCalculator$Algorithm;->calculator:Lorg/hermit/geo/GeoCalculator;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hermit/geo/GeoCalculator$Algorithm;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/hermit/geo/GeoCalculator$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/hermit/geo/GeoCalculator$Algorithm;

    return-object p0
.end method

.method public static values()[Lorg/hermit/geo/GeoCalculator$Algorithm;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/hermit/geo/GeoCalculator$Algorithm;->ENUM$VALUES:[Lorg/hermit/geo/GeoCalculator$Algorithm;

    array-length v1, v0

    new-array v2, v1, [Lorg/hermit/geo/GeoCalculator$Algorithm;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
