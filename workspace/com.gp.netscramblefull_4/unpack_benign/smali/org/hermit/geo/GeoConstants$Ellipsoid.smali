.class public final enum Lorg/hermit/geo/GeoConstants$Ellipsoid;
.super Ljava/lang/Enum;
.source "GeoConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/geo/GeoConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ellipsoid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/hermit/geo/GeoConstants$Ellipsoid;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AIRY1858:Lorg/hermit/geo/GeoConstants$Ellipsoid;

.field public static final enum AIRYM:Lorg/hermit/geo/GeoConstants$Ellipsoid;

.field private static final synthetic ENUM$VALUES:[Lorg/hermit/geo/GeoConstants$Ellipsoid;

.field public static final enum NAD27:Lorg/hermit/geo/GeoConstants$Ellipsoid;

.field public static final enum SPHERE:Lorg/hermit/geo/GeoConstants$Ellipsoid;

.field public static final enum WGS66:Lorg/hermit/geo/GeoConstants$Ellipsoid;

.field public static final enum WGS72:Lorg/hermit/geo/GeoConstants$Ellipsoid;

.field public static final enum WGS84:Lorg/hermit/geo/GeoConstants$Ellipsoid;


# instance fields
.field public final axis:D

.field public final flat:D

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v2, 0x0

    const-wide v11, 0x3f6b5e4587dfa571L    # 0.0033408506414970775

    .line 58
    new-instance v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;

    const-string v1, "SPHERE"

    const-string v3, "Sphere"

    const-wide v4, 0x41584dae00000000L    # 6371000.0

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/hermit/geo/GeoConstants$Ellipsoid;-><init>(Ljava/lang/String;ILjava/lang/String;DD)V

    sput-object v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->SPHERE:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .line 61
    new-instance v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;

    const-string v4, "WGS84"

    const-string v6, "GRS80 / WGS84 (NAD83)"

    const-wide v7, 0x415854a640000000L    # 6378137.0

    const-wide v9, 0x3f6b775a87362d2bL    # 0.0033528106811836675

    move v5, v13

    invoke-direct/range {v3 .. v10}, Lorg/hermit/geo/GeoConstants$Ellipsoid;-><init>(Ljava/lang/String;ILjava/lang/String;DD)V

    sput-object v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;->WGS84:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .line 64
    new-instance v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;

    const-string v4, "NAD27"

    const-string v6, "Clarke 1866 (NAD27)"

    const-wide v7, 0x415854b79999999aL    # 6378206.4

    const-wide v9, 0x3f6bc580d1f6a16aL    # 0.0033900753039299196

    move v5, v14

    invoke-direct/range {v3 .. v10}, Lorg/hermit/geo/GeoConstants$Ellipsoid;-><init>(Ljava/lang/String;ILjava/lang/String;DD)V

    sput-object v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;->NAD27:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .line 67
    new-instance v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;

    const-string v4, "AIRY1858"

    const-string v6, "Airy 1858"

    const-wide v7, 0x41585416d9581062L    # 6377563.396

    move v5, v15

    move-wide v9, v11

    invoke-direct/range {v3 .. v10}, Lorg/hermit/geo/GeoConstants$Ellipsoid;-><init>(Ljava/lang/String;ILjava/lang/String;DD)V

    sput-object v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;->AIRY1858:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .line 70
    new-instance v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;

    const-string v4, "AIRYM"

    const/4 v5, 0x4

    const-string v6, "Airy Modified"

    const-wide v7, 0x415853df0c189375L    # 6377340.189

    move-wide v9, v11

    invoke-direct/range {v3 .. v10}, Lorg/hermit/geo/GeoConstants$Ellipsoid;-><init>(Ljava/lang/String;ILjava/lang/String;DD)V

    sput-object v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;->AIRYM:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .line 73
    new-instance v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;

    const-string v4, "WGS66"

    const/4 v5, 0x5

    const-string v6, "NWL-9D (WGS 66)"

    const-wide v7, 0x415854a840000000L    # 6378145.0

    const-wide v9, 0x3f6b77861d9cdc98L    # 0.003352891869237217

    invoke-direct/range {v3 .. v10}, Lorg/hermit/geo/GeoConstants$Ellipsoid;-><init>(Ljava/lang/String;ILjava/lang/String;DD)V

    sput-object v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;->WGS66:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .line 76
    new-instance v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;

    const-string v4, "WGS72"

    const/4 v5, 0x6

    const-string v6, "WGS 72"

    const-wide v7, 0x415854a5c0000000L    # 6378135.0

    const-wide v9, 0x3f6b7749c3673876L    # 0.003352779454167505

    invoke-direct/range {v3 .. v10}, Lorg/hermit/geo/GeoConstants$Ellipsoid;-><init>(Ljava/lang/String;ILjava/lang/String;DD)V

    sput-object v3, Lorg/hermit/geo/GeoConstants$Ellipsoid;->WGS72:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/hermit/geo/GeoConstants$Ellipsoid;

    sget-object v1, Lorg/hermit/geo/GeoConstants$Ellipsoid;->SPHERE:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    aput-object v1, v0, v2

    sget-object v1, Lorg/hermit/geo/GeoConstants$Ellipsoid;->WGS84:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    aput-object v1, v0, v13

    sget-object v1, Lorg/hermit/geo/GeoConstants$Ellipsoid;->NAD27:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    aput-object v1, v0, v14

    sget-object v1, Lorg/hermit/geo/GeoConstants$Ellipsoid;->AIRY1858:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lorg/hermit/geo/GeoConstants$Ellipsoid;->AIRYM:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/hermit/geo/GeoConstants$Ellipsoid;->WGS66:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/hermit/geo/GeoConstants$Ellipsoid;->WGS72:Lorg/hermit/geo/GeoConstants$Ellipsoid;

    aput-object v2, v0, v1

    sput-object v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->ENUM$VALUES:[Lorg/hermit/geo/GeoConstants$Ellipsoid;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;DD)V
    .locals 0
    .param p3, "n"    # Ljava/lang/String;
    .param p4, "a"    # D
    .param p6, "f"    # D

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->name:Ljava/lang/String;

    .line 80
    iput-wide p4, p0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->axis:D

    .line 81
    iput-wide p6, p0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->flat:D

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hermit/geo/GeoConstants$Ellipsoid;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/hermit/geo/GeoConstants$Ellipsoid;

    return-object p0
.end method

.method public static values()[Lorg/hermit/geo/GeoConstants$Ellipsoid;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/hermit/geo/GeoConstants$Ellipsoid;->ENUM$VALUES:[Lorg/hermit/geo/GeoConstants$Ellipsoid;

    array-length v1, v0

    new-array v2, v1, [Lorg/hermit/geo/GeoConstants$Ellipsoid;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
