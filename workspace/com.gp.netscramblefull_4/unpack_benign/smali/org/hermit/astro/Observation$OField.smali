.class public final enum Lorg/hermit/astro/Observation$OField;
.super Ljava/lang/Enum;
.source "Observation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/astro/Observation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/hermit/astro/Observation$OField;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPARENT_LST:Lorg/hermit/astro/Observation$OField;

.field private static final synthetic ENUM$VALUES:[Lorg/hermit/astro/Observation$OField;

.field public static final enum GAST_INSTANT:Lorg/hermit/astro/Observation$OField;

.field public static final enum GAST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

.field public static final enum GMST_INSTANT:Lorg/hermit/astro/Observation$OField;

.field public static final enum GMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

.field public static final enum LAST_INSTANT:Lorg/hermit/astro/Observation$OField;

.field public static final enum LAST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

.field public static final enum LMST_INSTANT:Lorg/hermit/astro/Observation$OField;

.field public static final enum LMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

.field public static final enum MEAN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

.field public static final enum NUTATION_IN_LONGITUDE:Lorg/hermit/astro/Observation$OField;

.field public static final enum NUTATION_IN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

.field public static final enum RHO_COS_PHI1:Lorg/hermit/astro/Observation$OField;

.field public static final enum RHO_SIN_PHI1:Lorg/hermit/astro/Observation$OField;

.field public static final enum TRUE_OBLIQUITY:Lorg/hermit/astro/Observation$OField;


# instance fields
.field private calculator:Lorg/hermit/astro/Observation$Calc;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "RHO_SIN_PHI1"

    invoke-direct {v0, v1, v3}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->RHO_SIN_PHI1:Lorg/hermit/astro/Observation$OField;

    .line 89
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "RHO_COS_PHI1"

    invoke-direct {v0, v1, v4}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->RHO_COS_PHI1:Lorg/hermit/astro/Observation$OField;

    .line 95
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "GMST_MIDNIGHT"

    invoke-direct {v0, v1, v5}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->GMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    .line 100
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "GMST_INSTANT"

    invoke-direct {v0, v1, v6}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->GMST_INSTANT:Lorg/hermit/astro/Observation$OField;

    .line 106
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "GAST_MIDNIGHT"

    invoke-direct {v0, v1, v7}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->GAST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    .line 111
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "GAST_INSTANT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->GAST_INSTANT:Lorg/hermit/astro/Observation$OField;

    .line 117
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "LMST_MIDNIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->LMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    .line 122
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "LMST_INSTANT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->LMST_INSTANT:Lorg/hermit/astro/Observation$OField;

    .line 128
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "LAST_MIDNIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->LAST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    .line 133
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "LAST_INSTANT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->LAST_INSTANT:Lorg/hermit/astro/Observation$OField;

    .line 138
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "NUTATION_IN_LONGITUDE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_LONGITUDE:Lorg/hermit/astro/Observation$OField;

    .line 143
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "NUTATION_IN_OBLIQUITY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    .line 148
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "MEAN_OBLIQUITY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->MEAN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    .line 153
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "TRUE_OBLIQUITY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->TRUE_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    .line 158
    new-instance v0, Lorg/hermit/astro/Observation$OField;

    const-string v1, "APPARENT_LST"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/hermit/astro/Observation$OField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/astro/Observation$OField;->APPARENT_LST:Lorg/hermit/astro/Observation$OField;

    .line 79
    const/16 v0, 0xf

    new-array v0, v0, [Lorg/hermit/astro/Observation$OField;

    sget-object v1, Lorg/hermit/astro/Observation$OField;->RHO_SIN_PHI1:Lorg/hermit/astro/Observation$OField;

    aput-object v1, v0, v3

    sget-object v1, Lorg/hermit/astro/Observation$OField;->RHO_COS_PHI1:Lorg/hermit/astro/Observation$OField;

    aput-object v1, v0, v4

    sget-object v1, Lorg/hermit/astro/Observation$OField;->GMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    aput-object v1, v0, v5

    sget-object v1, Lorg/hermit/astro/Observation$OField;->GMST_INSTANT:Lorg/hermit/astro/Observation$OField;

    aput-object v1, v0, v6

    sget-object v1, Lorg/hermit/astro/Observation$OField;->GAST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/hermit/astro/Observation$OField;->GAST_INSTANT:Lorg/hermit/astro/Observation$OField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/hermit/astro/Observation$OField;->LMST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/hermit/astro/Observation$OField;->LMST_INSTANT:Lorg/hermit/astro/Observation$OField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/hermit/astro/Observation$OField;->LAST_MIDNIGHT:Lorg/hermit/astro/Observation$OField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/hermit/astro/Observation$OField;->LAST_INSTANT:Lorg/hermit/astro/Observation$OField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_LONGITUDE:Lorg/hermit/astro/Observation$OField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/hermit/astro/Observation$OField;->NUTATION_IN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/hermit/astro/Observation$OField;->MEAN_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/hermit/astro/Observation$OField;->TRUE_OBLIQUITY:Lorg/hermit/astro/Observation$OField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/hermit/astro/Observation$OField;->APPARENT_LST:Lorg/hermit/astro/Observation$OField;

    aput-object v2, v0, v1

    sput-object v0, Lorg/hermit/astro/Observation$OField;->ENUM$VALUES:[Lorg/hermit/astro/Observation$OField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/astro/Observation$OField;->calculator:Lorg/hermit/astro/Observation$Calc;

    .line 79
    return-void
.end method

.method static synthetic access$2(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V
    .locals 0

    .prologue
    .line 160
    invoke-static {p0, p1}, Lorg/hermit/astro/Observation$OField;->register(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V

    return-void
.end method

.method static synthetic access$3(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lorg/hermit/astro/Observation$OField;->calculate(Lorg/hermit/astro/Observation;)V

    return-void
.end method

.method private calculate(Lorg/hermit/astro/Observation;)V
    .locals 3
    .param p1, "o"    # Lorg/hermit/astro/Observation;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/hermit/astro/Observation$OField;->calculator:Lorg/hermit/astro/Observation$Calc;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Obs Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no calculator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/hermit/astro/Observation$OField;->calculator:Lorg/hermit/astro/Observation$Calc;

    invoke-virtual {v0, p1}, Lorg/hermit/astro/Observation$Calc;->c(Lorg/hermit/astro/Observation;)V

    .line 171
    return-void
.end method

.method private static register(Lorg/hermit/astro/Observation$OField;Lorg/hermit/astro/Observation$Calc;)V
    .locals 3
    .param p0, "field"    # Lorg/hermit/astro/Observation$OField;
    .param p1, "calc"    # Lorg/hermit/astro/Observation$Calc;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/hermit/astro/Observation$OField;->calculator:Lorg/hermit/astro/Observation$Calc;

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Obs Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-string v2, " already has a calculator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iput-object p1, p0, Lorg/hermit/astro/Observation$OField;->calculator:Lorg/hermit/astro/Observation$Calc;

    .line 165
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hermit/astro/Observation$OField;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/hermit/astro/Observation$OField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/hermit/astro/Observation$OField;

    return-object p0
.end method

.method public static values()[Lorg/hermit/astro/Observation$OField;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/hermit/astro/Observation$OField;->ENUM$VALUES:[Lorg/hermit/astro/Observation$OField;

    array-length v1, v0

    new-array v2, v1, [Lorg/hermit/astro/Observation$OField;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
