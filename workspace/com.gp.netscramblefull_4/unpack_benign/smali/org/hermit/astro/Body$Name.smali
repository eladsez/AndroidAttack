.class public final enum Lorg/hermit/astro/Body$Name;
.super Ljava/lang/Enum;
.source "Body.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/astro/Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/hermit/astro/Body$Name;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EARTH:Lorg/hermit/astro/Body$Name;

.field private static final synthetic ENUM$VALUES:[Lorg/hermit/astro/Body$Name;

.field public static final enum JUPITER:Lorg/hermit/astro/Body$Name;

.field public static final enum MARS:Lorg/hermit/astro/Body$Name;

.field public static final enum MERCURY:Lorg/hermit/astro/Body$Name;

.field public static final enum MOON:Lorg/hermit/astro/Body$Name;

.field public static final enum NEPTUNE:Lorg/hermit/astro/Body$Name;

.field public static final enum SATURN:Lorg/hermit/astro/Body$Name;

.field public static final enum SUN:Lorg/hermit/astro/Body$Name;

.field public static final enum URANUS:Lorg/hermit/astro/Body$Name;

.field public static final enum VENUS:Lorg/hermit/astro/Body$Name;


# instance fields
.field public final V_o:D

.field public final name:Ljava/lang/String;

.field public final symbol:C

.field public final terms:Lorg/hermit/astro/Vsop87;

.field public final θ_o:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 124
    new-instance v0, Lorg/hermit/astro/Body$Name;

    const-string v1, "SUN"

    const/4 v2, 0x0

    const-string v3, "Sun"

    const/16 v4, 0x2609

    const/4 v5, 0x0

    const-wide v6, 0x409dfd0a3d70a3d7L    # 1919.26

    const-wide v8, -0x3fc5428f5c28f5c3L    # -26.74

    invoke-direct/range {v0 .. v9}, Lorg/hermit/astro/Body$Name;-><init>(Ljava/lang/String;ILjava/lang/String;CLorg/hermit/astro/Vsop87;DD)V

    sput-object v0, Lorg/hermit/astro/Body$Name;->SUN:Lorg/hermit/astro/Body$Name;

    .line 126
    new-instance v0, Lorg/hermit/astro/Body$Name;

    const-string v1, "MOON"

    const/4 v2, 0x1

    const-string v3, "Moon"

    const/16 v4, 0x263e

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/hermit/astro/Body$Name;-><init>(Ljava/lang/String;ILjava/lang/String;CLorg/hermit/astro/Vsop87;DD)V

    sput-object v0, Lorg/hermit/astro/Body$Name;->MOON:Lorg/hermit/astro/Body$Name;

    .line 128
    new-instance v0, Lorg/hermit/astro/Body$Name;

    const-string v1, "MERCURY"

    const/4 v2, 0x2

    const-string v3, "Mercury"

    const/16 v4, 0x263f

    sget-object v5, Lorg/hermit/astro/Vsop87;->MERCURY:Lorg/hermit/astro/Vsop87;

    const-wide v6, 0x401af5c28f5c28f6L    # 6.74

    const-wide v8, -0x40251eb851eb851fL    # -0.42

    invoke-direct/range {v0 .. v9}, Lorg/hermit/astro/Body$Name;-><init>(Ljava/lang/String;ILjava/lang/String;CLorg/hermit/astro/Vsop87;DD)V

    sput-object v0, Lorg/hermit/astro/Body$Name;->MERCURY:Lorg/hermit/astro/Body$Name;

    .line 130
    new-instance v0, Lorg/hermit/astro/Body$Name;

    const-string v1, "VENUS"

    const/4 v2, 0x3

    const-string v3, "Venus"

    const/16 v4, 0x2640

    sget-object v5, Lorg/hermit/astro/Vsop87;->VENUS:Lorg/hermit/astro/Vsop87;

    const-wide v6, 0x4030d1eb851eb852L    # 16.82

    const-wide v8, -0x3fee666666666666L    # -4.4

    invoke-direct/range {v0 .. v9}, Lorg/hermit/astro/Body$Name;-><init>(Ljava/lang/String;ILjava/lang/String;CLorg/hermit/astro/Vsop87;DD)V

    sput-object v0, Lorg/hermit/astro/Body$Name;->VENUS:Lorg/hermit/astro/Body$Name;

    .line 132
    new-instance v0, Lorg/hermit/astro/Body$Name;

    const-string v1, "EARTH"

    const/4 v2, 0x4

    const-string v3, "Earth"

    const/16 v4, 0x2641

    sget-object v5, Lorg/hermit/astro/Vsop87;->EARTH:Lorg/hermit/astro/Vsop87;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/hermit/astro/Body$Name;-><init>(Ljava/lang/String;ILjava/lang/String;CLorg/hermit/astro/Vsop87;DD)V

    sput-object v0, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    .line 134
    new-instance v0, Lorg/hermit/astro/Body$Name;

    const-string v1, "MARS"

    const/4 v2, 0x5

    const-string v3, "Mars"

    const/16 v4, 0x2642

    sget-object v5, Lorg/hermit/astro/Vsop87;->MARS:Lorg/hermit/astro/Vsop87;

    const-wide v6, 0x4022b851eb851eb8L    # 9.36

    const-wide v8, -0x4007ae147ae147aeL    # -1.52

    invoke-direct/range {v0 .. v9}, Lorg/hermit/astro/Body$Name;-><init>(Ljava/lang/String;ILjava/lang/String;CLorg/hermit/astro/Vsop87;DD)V

    sput-object v0, Lorg/hermit/astro/Body$Name;->MARS:Lorg/hermit/astro/Body$Name;

    .line 136
    new-instance v0, Lorg/hermit/astro/Body$Name;

    const-string v1, "JUPITER"

    const/4 v2, 0x6

    const-string v3, "Jupiter"

    const/16 v4, 0x2643

    sget-object v5, Lorg/hermit/astro/Vsop87;->JUPITER:Lorg/hermit/astro/Vsop87;

    const-wide v6, 0x406897ae147ae148L    # 196.74

    const-wide v8, -0x3fdd333333333333L    # -9.4

    invoke-direct/range {v0 .. v9}, Lorg/hermit/astro/Body$Name;-><init>(Ljava/lang/String;ILjava/lang/String;CLorg/hermit/astro/Vsop87;DD)V

    sput-object v0, Lorg/hermit/astro/Body$Name;->JUPITER:Lorg/hermit/astro/Body$Name;

    .line 138
    new-instance v0, Lorg/hermit/astro/Body$Name;

    const-string v1, "SATURN"

    const/4 v2, 0x7

    const-string v3, "Saturn"

    const/16 v4, 0x2644

    sget-object v5, Lorg/hermit/astro/Vsop87;->SATURN:Lorg/hermit/astro/Vsop87;

    const-wide v6, 0x4064b33333333333L    # 165.6

    const-wide v8, -0x3fde3d70a3d70a3dL    # -8.88

    invoke-direct/range {v0 .. v9}, Lorg/hermit/astro/Body$Name;-><init>(Ljava/lang/String;ILjava/lang/String;CLorg/hermit/astro/Vsop87;DD)V

    sput-object v0, Lorg/hermit/astro/Body$Name;->SATURN:Lorg/hermit/astro/Body$Name;

    .line 140
    new-instance v0, Lorg/hermit/astro/Body$Name;

    const-string v1, "URANUS"

    const/16 v2, 0x8

    const-string v3, "Uranus"

    const/16 v4, 0x2645

    sget-object v5, Lorg/hermit/astro/Vsop87;->URANUS:Lorg/hermit/astro/Vsop87;

    const-wide v6, 0x405123d70a3d70a4L    # 68.56

    const-wide v8, -0x3fe33d70a3d70a3dL    # -7.19

    invoke-direct/range {v0 .. v9}, Lorg/hermit/astro/Body$Name;-><init>(Ljava/lang/String;ILjava/lang/String;CLorg/hermit/astro/Vsop87;DD)V

    sput-object v0, Lorg/hermit/astro/Body$Name;->URANUS:Lorg/hermit/astro/Body$Name;

    .line 142
    new-instance v0, Lorg/hermit/astro/Body$Name;

    const-string v1, "NEPTUNE"

    const/16 v2, 0x9

    const-string v3, "Neptune"

    const/16 v4, 0x2646

    sget-object v5, Lorg/hermit/astro/Vsop87;->NEPTUNE:Lorg/hermit/astro/Vsop87;

    const-wide v6, 0x405247ae147ae148L    # 73.12

    const-wide v8, -0x3fe4851eb851eb85L    # -6.87

    invoke-direct/range {v0 .. v9}, Lorg/hermit/astro/Body$Name;-><init>(Ljava/lang/String;ILjava/lang/String;CLorg/hermit/astro/Vsop87;DD)V

    sput-object v0, Lorg/hermit/astro/Body$Name;->NEPTUNE:Lorg/hermit/astro/Body$Name;

    .line 121
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/hermit/astro/Body$Name;

    const/4 v1, 0x0

    sget-object v2, Lorg/hermit/astro/Body$Name;->SUN:Lorg/hermit/astro/Body$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/hermit/astro/Body$Name;->MOON:Lorg/hermit/astro/Body$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/hermit/astro/Body$Name;->MERCURY:Lorg/hermit/astro/Body$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/hermit/astro/Body$Name;->VENUS:Lorg/hermit/astro/Body$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/hermit/astro/Body$Name;->EARTH:Lorg/hermit/astro/Body$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/hermit/astro/Body$Name;->MARS:Lorg/hermit/astro/Body$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/hermit/astro/Body$Name;->JUPITER:Lorg/hermit/astro/Body$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/hermit/astro/Body$Name;->SATURN:Lorg/hermit/astro/Body$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/hermit/astro/Body$Name;->URANUS:Lorg/hermit/astro/Body$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/hermit/astro/Body$Name;->NEPTUNE:Lorg/hermit/astro/Body$Name;

    aput-object v2, v0, v1

    sput-object v0, Lorg/hermit/astro/Body$Name;->ENUM$VALUES:[Lorg/hermit/astro/Body$Name;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;CLorg/hermit/astro/Vsop87;DD)V
    .locals 4
    .param p3, "n"    # Ljava/lang/String;
    .param p4, "sym"    # C
    .param p5, "v"    # Lorg/hermit/astro/Vsop87;
    .param p6, "d"    # D
    .param p8, "m"    # D

    .prologue
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput-object p3, p0, Lorg/hermit/astro/Body$Name;->name:Ljava/lang/String;

    .line 146
    iput-char p4, p0, Lorg/hermit/astro/Body$Name;->symbol:C

    .line 147
    iput-object p5, p0, Lorg/hermit/astro/Body$Name;->terms:Lorg/hermit/astro/Vsop87;

    .line 148
    div-double v0, p6, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/hermit/astro/Body$Name;->θ_o:D

    .line 149
    iput-wide p8, p0, Lorg/hermit/astro/Body$Name;->V_o:D

    .line 150
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hermit/astro/Body$Name;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/hermit/astro/Body$Name;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/hermit/astro/Body$Name;

    return-object p0
.end method

.method public static values()[Lorg/hermit/astro/Body$Name;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/hermit/astro/Body$Name;->ENUM$VALUES:[Lorg/hermit/astro/Body$Name;

    array-length v1, v0

    new-array v2, v1, [Lorg/hermit/astro/Body$Name;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
