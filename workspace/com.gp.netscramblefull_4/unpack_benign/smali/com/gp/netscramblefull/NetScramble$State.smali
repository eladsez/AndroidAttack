.class final enum Lcom/gp/netscramblefull/NetScramble$State;
.super Ljava/lang/Enum;
.source "NetScramble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/NetScramble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gp/netscramblefull/NetScramble$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABORTED:Lcom/gp/netscramblefull/NetScramble$State;

.field private static final synthetic ENUM$VALUES:[Lcom/gp/netscramblefull/NetScramble$State;

.field public static final enum INIT:Lcom/gp/netscramblefull/NetScramble$State;

.field public static final enum NEW:Lcom/gp/netscramblefull/NetScramble$State;

.field public static final enum PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

.field public static final enum RESTORED:Lcom/gp/netscramblefull/NetScramble$State;

.field public static final enum RUNNING:Lcom/gp/netscramblefull/NetScramble$State;

.field public static final enum SOLVED:Lcom/gp/netscramblefull/NetScramble$State;

.field private static states:[Lcom/gp/netscramblefull/NetScramble$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Lcom/gp/netscramblefull/NetScramble$State;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/gp/netscramblefull/NetScramble$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$State;->NEW:Lcom/gp/netscramblefull/NetScramble$State;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$State;

    const-string v1, "RESTORED"

    invoke-direct {v0, v1, v4}, Lcom/gp/netscramblefull/NetScramble$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$State;->RESTORED:Lcom/gp/netscramblefull/NetScramble$State;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v5}, Lcom/gp/netscramblefull/NetScramble$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$State;->INIT:Lcom/gp/netscramblefull/NetScramble$State;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v6}, Lcom/gp/netscramblefull/NetScramble$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$State;->PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$State;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v7}, Lcom/gp/netscramblefull/NetScramble$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$State;->RUNNING:Lcom/gp/netscramblefull/NetScramble$State;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$State;

    const-string v1, "SOLVED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gp/netscramblefull/NetScramble$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$State;->SOLVED:Lcom/gp/netscramblefull/NetScramble$State;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$State;

    const-string v1, "ABORTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gp/netscramblefull/NetScramble$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$State;->ABORTED:Lcom/gp/netscramblefull/NetScramble$State;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/gp/netscramblefull/NetScramble$State;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->NEW:Lcom/gp/netscramblefull/NetScramble$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->RESTORED:Lcom/gp/netscramblefull/NetScramble$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->INIT:Lcom/gp/netscramblefull/NetScramble$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->PAUSED:Lcom/gp/netscramblefull/NetScramble$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$State;->RUNNING:Lcom/gp/netscramblefull/NetScramble$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/gp/netscramblefull/NetScramble$State;->SOLVED:Lcom/gp/netscramblefull/NetScramble$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gp/netscramblefull/NetScramble$State;->ABORTED:Lcom/gp/netscramblefull/NetScramble$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$State;->ENUM$VALUES:[Lcom/gp/netscramblefull/NetScramble$State;

    .line 82
    invoke-static {}, Lcom/gp/netscramblefull/NetScramble$State;->values()[Lcom/gp/netscramblefull/NetScramble$State;

    move-result-object v0

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$State;->states:[Lcom/gp/netscramblefull/NetScramble$State;

    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getValue(I)Lcom/gp/netscramblefull/NetScramble$State;
    .locals 1
    .param p0, "ordinal"    # I

    .prologue
    .line 79
    sget-object v0, Lcom/gp/netscramblefull/NetScramble$State;->states:[Lcom/gp/netscramblefull/NetScramble$State;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gp/netscramblefull/NetScramble$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gp/netscramblefull/NetScramble$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gp/netscramblefull/NetScramble$State;

    return-object p0
.end method

.method public static values()[Lcom/gp/netscramblefull/NetScramble$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gp/netscramblefull/NetScramble$State;->ENUM$VALUES:[Lcom/gp/netscramblefull/NetScramble$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/gp/netscramblefull/NetScramble$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
