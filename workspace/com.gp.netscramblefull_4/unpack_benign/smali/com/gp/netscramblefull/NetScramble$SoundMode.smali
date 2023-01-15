.class final enum Lcom/gp/netscramblefull/NetScramble$SoundMode;
.super Ljava/lang/Enum;
.source "NetScramble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/NetScramble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SoundMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gp/netscramblefull/NetScramble$SoundMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gp/netscramblefull/NetScramble$SoundMode;

.field public static final enum FULL:Lcom/gp/netscramblefull/NetScramble$SoundMode;

.field public static final enum NONE:Lcom/gp/netscramblefull/NetScramble$SoundMode;

.field public static final enum QUIET:Lcom/gp/netscramblefull/NetScramble$SoundMode;


# instance fields
.field private menuId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lcom/gp/netscramblefull/NetScramble$SoundMode;

    const-string v1, "NONE"

    const v2, 0x7f05002d

    invoke-direct {v0, v1, v3, v2}, Lcom/gp/netscramblefull/NetScramble$SoundMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$SoundMode;->NONE:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$SoundMode;

    const-string v1, "QUIET"

    const v2, 0x7f05002e

    invoke-direct {v0, v1, v4, v2}, Lcom/gp/netscramblefull/NetScramble$SoundMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$SoundMode;->QUIET:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$SoundMode;

    const-string v1, "FULL"

    const v2, 0x7f05002f

    invoke-direct {v0, v1, v5, v2}, Lcom/gp/netscramblefull/NetScramble$SoundMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$SoundMode;->FULL:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/gp/netscramblefull/NetScramble$SoundMode;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$SoundMode;->NONE:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$SoundMode;->QUIET:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$SoundMode;->FULL:Lcom/gp/netscramblefull/NetScramble$SoundMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$SoundMode;->ENUM$VALUES:[Lcom/gp/netscramblefull/NetScramble$SoundMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "res"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/gp/netscramblefull/NetScramble$SoundMode;->menuId:I

    .line 108
    return-void
.end method

.method static synthetic access$2(Lcom/gp/netscramblefull/NetScramble$SoundMode;)I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/gp/netscramblefull/NetScramble$SoundMode;->menuId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gp/netscramblefull/NetScramble$SoundMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gp/netscramblefull/NetScramble$SoundMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gp/netscramblefull/NetScramble$SoundMode;

    return-object p0
.end method

.method public static values()[Lcom/gp/netscramblefull/NetScramble$SoundMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gp/netscramblefull/NetScramble$SoundMode;->ENUM$VALUES:[Lcom/gp/netscramblefull/NetScramble$SoundMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/gp/netscramblefull/NetScramble$SoundMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
