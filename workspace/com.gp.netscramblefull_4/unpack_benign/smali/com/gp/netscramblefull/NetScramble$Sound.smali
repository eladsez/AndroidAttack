.class final enum Lcom/gp/netscramblefull/NetScramble$Sound;
.super Ljava/lang/Enum;
.source "NetScramble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/NetScramble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Sound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gp/netscramblefull/NetScramble$Sound;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICK:Lcom/gp/netscramblefull/NetScramble$Sound;

.field public static final enum CONNECT:Lcom/gp/netscramblefull/NetScramble$Sound;

.field private static final synthetic ENUM$VALUES:[Lcom/gp/netscramblefull/NetScramble$Sound;

.field public static final enum POP:Lcom/gp/netscramblefull/NetScramble$Sound;

.field public static final enum START:Lcom/gp/netscramblefull/NetScramble$Sound;

.field public static final enum TURN:Lcom/gp/netscramblefull/NetScramble$Sound;

.field public static final enum WIN:Lcom/gp/netscramblefull/NetScramble$Sound;


# instance fields
.field private soundId:I

.field private final soundRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    new-instance v0, Lcom/gp/netscramblefull/NetScramble$Sound;

    const-string v1, "START"

    const v2, 0x7f040005

    invoke-direct {v0, v1, v4, v2}, Lcom/gp/netscramblefull/NetScramble$Sound;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$Sound;->START:Lcom/gp/netscramblefull/NetScramble$Sound;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$Sound;

    const-string v1, "CLICK"

    const v2, 0x7f040001

    invoke-direct {v0, v1, v5, v2}, Lcom/gp/netscramblefull/NetScramble$Sound;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$Sound;->CLICK:Lcom/gp/netscramblefull/NetScramble$Sound;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$Sound;

    const-string v1, "TURN"

    const v2, 0x7f040006

    invoke-direct {v0, v1, v6, v2}, Lcom/gp/netscramblefull/NetScramble$Sound;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$Sound;->TURN:Lcom/gp/netscramblefull/NetScramble$Sound;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$Sound;

    const-string v1, "CONNECT"

    .line 90
    const v2, 0x7f040002

    invoke-direct {v0, v1, v7, v2}, Lcom/gp/netscramblefull/NetScramble$Sound;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$Sound;->CONNECT:Lcom/gp/netscramblefull/NetScramble$Sound;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$Sound;

    const-string v1, "POP"

    const v2, 0x7f040004

    invoke-direct {v0, v1, v8, v2}, Lcom/gp/netscramblefull/NetScramble$Sound;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$Sound;->POP:Lcom/gp/netscramblefull/NetScramble$Sound;

    new-instance v0, Lcom/gp/netscramblefull/NetScramble$Sound;

    const-string v1, "WIN"

    const/4 v2, 0x5

    const v3, 0x7f040007

    invoke-direct {v0, v1, v2, v3}, Lcom/gp/netscramblefull/NetScramble$Sound;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$Sound;->WIN:Lcom/gp/netscramblefull/NetScramble$Sound;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/gp/netscramblefull/NetScramble$Sound;

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$Sound;->START:Lcom/gp/netscramblefull/NetScramble$Sound;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$Sound;->CLICK:Lcom/gp/netscramblefull/NetScramble$Sound;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$Sound;->TURN:Lcom/gp/netscramblefull/NetScramble$Sound;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$Sound;->CONNECT:Lcom/gp/netscramblefull/NetScramble$Sound;

    aput-object v1, v0, v7

    sget-object v1, Lcom/gp/netscramblefull/NetScramble$Sound;->POP:Lcom/gp/netscramblefull/NetScramble$Sound;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/gp/netscramblefull/NetScramble$Sound;->WIN:Lcom/gp/netscramblefull/NetScramble$Sound;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gp/netscramblefull/NetScramble$Sound;->ENUM$VALUES:[Lcom/gp/netscramblefull/NetScramble$Sound;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "res"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/netscramblefull/NetScramble$Sound;->soundId:I

    .line 93
    iput p3, p0, Lcom/gp/netscramblefull/NetScramble$Sound;->soundRes:I

    .line 94
    return-void
.end method

.method static synthetic access$2(Lcom/gp/netscramblefull/NetScramble$Sound;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/gp/netscramblefull/NetScramble$Sound;->soundId:I

    return v0
.end method

.method static synthetic access$3(Lcom/gp/netscramblefull/NetScramble$Sound;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/gp/netscramblefull/NetScramble$Sound;->soundRes:I

    return v0
.end method

.method static synthetic access$4(Lcom/gp/netscramblefull/NetScramble$Sound;I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/gp/netscramblefull/NetScramble$Sound;->soundId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gp/netscramblefull/NetScramble$Sound;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gp/netscramblefull/NetScramble$Sound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gp/netscramblefull/NetScramble$Sound;

    return-object p0
.end method

.method public static values()[Lcom/gp/netscramblefull/NetScramble$Sound;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gp/netscramblefull/NetScramble$Sound;->ENUM$VALUES:[Lcom/gp/netscramblefull/NetScramble$Sound;

    array-length v1, v0

    new-array v2, v1, [Lcom/gp/netscramblefull/NetScramble$Sound;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
