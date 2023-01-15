.class public final enum Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;
.super Ljava/lang/Enum;
.source "PaintInputMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

.field public static final enum FINGER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

.field public static final enum RUBBER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

.field public static final enum TEXT:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

.field public static final enum VIEW:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    const-string v1, "FINGER"

    invoke-direct {v0, v1, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->FINGER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->TEXT:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    const-string v1, "RUBBER"

    invoke-direct {v0, v1, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->RUBBER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    new-instance v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v5}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->VIEW:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->FINGER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->TEXT:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->RUBBER:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->VIEW:Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ENUM$VALUES:[Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    return-object v0
.end method

.method public static values()[Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;->ENUM$VALUES:[Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/blogspot/mvnblogbuild/fingernotes/utils/PaintInputMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
