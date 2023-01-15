.class final enum Lcom/gp/netscramblefull/Cell$Dir;
.super Ljava/lang/Enum;
.source "Cell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Dir"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gp/netscramblefull/Cell$Dir;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum FREE:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum NONE:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum URDL:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum URD_:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum UR_L:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum UR__:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum U_DL:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum U_D_:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum U__L:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum U___:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum _RDL:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum _RD_:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum _R_L:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum _R__:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum __DL:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum __D_:Lcom/gp/netscramblefull/Cell$Dir;

.field public static final enum ___L:Lcom/gp/netscramblefull/Cell$Dir;

.field static final cardinalOffs:[[I

.field static final cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

.field static final dirs:[Lcom/gp/netscramblefull/Cell$Dir;


# instance fields
.field private greyImg:Landroid/graphics/Bitmap;

.field final imageId:I

.field private normalImg:Landroid/graphics/Bitmap;

.field reverse:Lcom/gp/netscramblefull/Cell$Dir;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v4, v4}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    .line 59
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "___L"

    const v2, 0x7f020017

    invoke-direct {v0, v1, v5, v2}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->___L:Lcom/gp/netscramblefull/Cell$Dir;

    .line 60
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "__D_"

    const v2, 0x7f020018

    invoke-direct {v0, v1, v6, v2}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->__D_:Lcom/gp/netscramblefull/Cell$Dir;

    .line 61
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "__DL"

    const v2, 0x7f020019

    invoke-direct {v0, v1, v7, v2}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->__DL:Lcom/gp/netscramblefull/Cell$Dir;

    .line 62
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "_R__"

    const v2, 0x7f02001a

    invoke-direct {v0, v1, v8, v2}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->_R__:Lcom/gp/netscramblefull/Cell$Dir;

    .line 63
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "_R_L"

    const/4 v2, 0x5

    const v3, 0x7f02001b

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->_R_L:Lcom/gp/netscramblefull/Cell$Dir;

    .line 64
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "_RD_"

    const/4 v2, 0x6

    const v3, 0x7f02001c

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->_RD_:Lcom/gp/netscramblefull/Cell$Dir;

    .line 65
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "_RDL"

    const/4 v2, 0x7

    const v3, 0x7f02001d

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->_RDL:Lcom/gp/netscramblefull/Cell$Dir;

    .line 66
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "U___"

    const/16 v2, 0x8

    const v3, 0x7f02001e

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->U___:Lcom/gp/netscramblefull/Cell$Dir;

    .line 67
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "U__L"

    const/16 v2, 0x9

    const v3, 0x7f02001f

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->U__L:Lcom/gp/netscramblefull/Cell$Dir;

    .line 68
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "U_D_"

    const/16 v2, 0xa

    const v3, 0x7f020020

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->U_D_:Lcom/gp/netscramblefull/Cell$Dir;

    .line 69
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "U_DL"

    const/16 v2, 0xb

    const v3, 0x7f020021

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->U_DL:Lcom/gp/netscramblefull/Cell$Dir;

    .line 70
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "UR__"

    const/16 v2, 0xc

    const v3, 0x7f020022

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->UR__:Lcom/gp/netscramblefull/Cell$Dir;

    .line 71
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "UR_L"

    const/16 v2, 0xd

    const v3, 0x7f020023

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->UR_L:Lcom/gp/netscramblefull/Cell$Dir;

    .line 72
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "URD_"

    const/16 v2, 0xe

    const v3, 0x7f020024

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->URD_:Lcom/gp/netscramblefull/Cell$Dir;

    .line 73
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "URDL"

    const/16 v2, 0xf

    const v3, 0x7f020025

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->URDL:Lcom/gp/netscramblefull/Cell$Dir;

    .line 74
    new-instance v0, Lcom/gp/netscramblefull/Cell$Dir;

    const-string v1, "NONE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v4}, Lcom/gp/netscramblefull/Cell$Dir;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->NONE:Lcom/gp/netscramblefull/Cell$Dir;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/gp/netscramblefull/Cell$Dir;

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->FREE:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->___L:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->__D_:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->__DL:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v1, v0, v7

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->_R__:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->_R_L:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->_RD_:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->_RDL:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->U___:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->U__L:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->U_D_:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->U_DL:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->UR__:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->UR_L:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->URD_:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->URDL:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/gp/netscramblefull/Cell$Dir;->NONE:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->ENUM$VALUES:[Lcom/gp/netscramblefull/Cell$Dir;

    .line 85
    invoke-static {}, Lcom/gp/netscramblefull/Cell$Dir;->values()[Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v0

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->dirs:[Lcom/gp/netscramblefull/Cell$Dir;

    .line 86
    new-array v0, v8, [Lcom/gp/netscramblefull/Cell$Dir;

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->___L:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->__D_:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->_R__:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->U___:Lcom/gp/netscramblefull/Cell$Dir;

    aput-object v1, v0, v7

    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->cardinals:[Lcom/gp/netscramblefull/Cell$Dir;

    .line 87
    new-array v0, v8, [[I

    .line 88
    new-array v1, v6, [I

    const/4 v2, -0x1

    aput v2, v1, v4

    aput-object v1, v0, v4

    .line 89
    new-array v1, v6, [I

    aput v5, v1, v5

    aput-object v1, v0, v5

    .line 90
    new-array v1, v6, [I

    aput v5, v1, v4

    aput-object v1, v0, v6

    .line 91
    new-array v1, v6, [I

    const/4 v2, -0x1

    aput v2, v1, v5

    aput-object v1, v0, v7

    .line 87
    sput-object v0, Lcom/gp/netscramblefull/Cell$Dir;->cardinalOffs:[[I

    .line 97
    sget-object v0, Lcom/gp/netscramblefull/Cell$Dir;->U___:Lcom/gp/netscramblefull/Cell$Dir;

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->__D_:Lcom/gp/netscramblefull/Cell$Dir;

    iput-object v1, v0, Lcom/gp/netscramblefull/Cell$Dir;->reverse:Lcom/gp/netscramblefull/Cell$Dir;

    .line 98
    sget-object v0, Lcom/gp/netscramblefull/Cell$Dir;->_R__:Lcom/gp/netscramblefull/Cell$Dir;

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->___L:Lcom/gp/netscramblefull/Cell$Dir;

    iput-object v1, v0, Lcom/gp/netscramblefull/Cell$Dir;->reverse:Lcom/gp/netscramblefull/Cell$Dir;

    .line 99
    sget-object v0, Lcom/gp/netscramblefull/Cell$Dir;->__D_:Lcom/gp/netscramblefull/Cell$Dir;

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->U___:Lcom/gp/netscramblefull/Cell$Dir;

    iput-object v1, v0, Lcom/gp/netscramblefull/Cell$Dir;->reverse:Lcom/gp/netscramblefull/Cell$Dir;

    .line 100
    sget-object v0, Lcom/gp/netscramblefull/Cell$Dir;->___L:Lcom/gp/netscramblefull/Cell$Dir;

    sget-object v1, Lcom/gp/netscramblefull/Cell$Dir;->_R__:Lcom/gp/netscramblefull/Cell$Dir;

    iput-object v1, v0, Lcom/gp/netscramblefull/Cell$Dir;->reverse:Lcom/gp/netscramblefull/Cell$Dir;

    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "img"    # I

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput-object v0, p0, Lcom/gp/netscramblefull/Cell$Dir;->reverse:Lcom/gp/netscramblefull/Cell$Dir;

    .line 105
    iput-object v0, p0, Lcom/gp/netscramblefull/Cell$Dir;->normalImg:Landroid/graphics/Bitmap;

    .line 106
    iput-object v0, p0, Lcom/gp/netscramblefull/Cell$Dir;->greyImg:Landroid/graphics/Bitmap;

    .line 77
    iput p3, p0, Lcom/gp/netscramblefull/Cell$Dir;->imageId:I

    .line 78
    return-void
.end method

.method static synthetic access$2(Lcom/gp/netscramblefull/Cell$Dir;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/gp/netscramblefull/Cell$Dir;->normalImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$3(Lcom/gp/netscramblefull/Cell$Dir;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/gp/netscramblefull/Cell$Dir;->greyImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(I)Lcom/gp/netscramblefull/Cell$Dir;
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcom/gp/netscramblefull/Cell$Dir;->getDir(I)Lcom/gp/netscramblefull/Cell$Dir;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/gp/netscramblefull/Cell$Dir;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/gp/netscramblefull/Cell$Dir;->normalImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6(Lcom/gp/netscramblefull/Cell$Dir;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/gp/netscramblefull/Cell$Dir;->greyImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getDir(I)Lcom/gp/netscramblefull/Cell$Dir;
    .locals 1
    .param p0, "bits"    # I

    .prologue
    .line 81
    sget-object v0, Lcom/gp/netscramblefull/Cell$Dir;->dirs:[Lcom/gp/netscramblefull/Cell$Dir;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gp/netscramblefull/Cell$Dir;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gp/netscramblefull/Cell$Dir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gp/netscramblefull/Cell$Dir;

    return-object p0
.end method

.method public static values()[Lcom/gp/netscramblefull/Cell$Dir;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gp/netscramblefull/Cell$Dir;->ENUM$VALUES:[Lcom/gp/netscramblefull/Cell$Dir;

    array-length v1, v0

    new-array v2, v1, [Lcom/gp/netscramblefull/Cell$Dir;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
