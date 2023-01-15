.class public final enum Lcom/djavid/puppypet_es/MotionParams$MoveDirection;
.super Ljava/lang/Enum;
.source "MotionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/djavid/puppypet_es/MotionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoveDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/djavid/puppypet_es/MotionParams$MoveDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWN:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

.field public static final enum DOWN_LEFT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

.field public static final enum DOWN_RIGHT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

.field private static final synthetic ENUM$VALUES:[Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

.field public static final enum LEFT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

.field public static final enum RIGHT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

.field public static final enum UP:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

.field public static final enum UP_LEFT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

.field public static final enum UP_RIGHT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    const-string v1, "UP"

    invoke-direct {v0, v1, v3}, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->UP:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v4}, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->DOWN:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v5}, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->LEFT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v6}, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->RIGHT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    const-string v1, "UP_LEFT"

    invoke-direct {v0, v1, v7}, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->UP_LEFT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    const-string v1, "UP_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->UP_RIGHT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    const-string v1, "DOWN_LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->DOWN_LEFT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    const-string v1, "DOWN_RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->DOWN_RIGHT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    sget-object v1, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->UP:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->DOWN:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->LEFT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->RIGHT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    aput-object v1, v0, v6

    sget-object v1, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->UP_LEFT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->UP_RIGHT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->DOWN_LEFT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->DOWN_RIGHT:Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->ENUM$VALUES:[Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/djavid/puppypet_es/MotionParams$MoveDirection;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    return-object v0
.end method

.method public static values()[Lcom/djavid/puppypet_es/MotionParams$MoveDirection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/djavid/puppypet_es/MotionParams$MoveDirection;->ENUM$VALUES:[Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    array-length v1, v0

    new-array v2, v1, [Lcom/djavid/puppypet_es/MotionParams$MoveDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
