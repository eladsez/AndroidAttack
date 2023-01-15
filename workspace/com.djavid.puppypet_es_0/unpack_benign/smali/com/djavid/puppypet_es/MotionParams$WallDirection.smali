.class public final enum Lcom/djavid/puppypet_es/MotionParams$WallDirection;
.super Ljava/lang/Enum;
.source "MotionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/djavid/puppypet_es/MotionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WallDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/djavid/puppypet_es/MotionParams$WallDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWN:Lcom/djavid/puppypet_es/MotionParams$WallDirection;

.field private static final synthetic ENUM$VALUES:[Lcom/djavid/puppypet_es/MotionParams$WallDirection;

.field public static final enum LEFT:Lcom/djavid/puppypet_es/MotionParams$WallDirection;

.field public static final enum RIGHT:Lcom/djavid/puppypet_es/MotionParams$WallDirection;

.field public static final enum UP:Lcom/djavid/puppypet_es/MotionParams$WallDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcom/djavid/puppypet_es/MotionParams$WallDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;->UP:Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/djavid/puppypet_es/MotionParams$WallDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;->DOWN:Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v4}, Lcom/djavid/puppypet_es/MotionParams$WallDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;->LEFT:Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    new-instance v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/djavid/puppypet_es/MotionParams$WallDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;->RIGHT:Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    sget-object v1, Lcom/djavid/puppypet_es/MotionParams$WallDirection;->UP:Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/djavid/puppypet_es/MotionParams$WallDirection;->DOWN:Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/djavid/puppypet_es/MotionParams$WallDirection;->LEFT:Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/djavid/puppypet_es/MotionParams$WallDirection;->RIGHT:Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;->ENUM$VALUES:[Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/djavid/puppypet_es/MotionParams$WallDirection;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    return-object v0
.end method

.method public static values()[Lcom/djavid/puppypet_es/MotionParams$WallDirection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/djavid/puppypet_es/MotionParams$WallDirection;->ENUM$VALUES:[Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    array-length v1, v0

    new-array v2, v1, [Lcom/djavid/puppypet_es/MotionParams$WallDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
