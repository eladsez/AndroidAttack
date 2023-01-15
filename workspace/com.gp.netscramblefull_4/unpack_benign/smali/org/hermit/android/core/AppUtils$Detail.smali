.class public final enum Lorg/hermit/android/core/AppUtils$Detail;
.super Ljava/lang/Enum;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/core/AppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/hermit/android/core/AppUtils$Detail;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lorg/hermit/android/core/AppUtils$Detail;

.field private static final synthetic ENUM$VALUES:[Lorg/hermit/android/core/AppUtils$Detail;

.field public static final enum NONE:Lorg/hermit/android/core/AppUtils$Detail;

.field public static final enum SIMPLE:Lorg/hermit/android/core/AppUtils$Detail;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lorg/hermit/android/core/AppUtils$Detail;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/hermit/android/core/AppUtils$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/core/AppUtils$Detail;->NONE:Lorg/hermit/android/core/AppUtils$Detail;

    .line 48
    new-instance v0, Lorg/hermit/android/core/AppUtils$Detail;

    const-string v1, "SIMPLE"

    invoke-direct {v0, v1, v3}, Lorg/hermit/android/core/AppUtils$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/core/AppUtils$Detail;->SIMPLE:Lorg/hermit/android/core/AppUtils$Detail;

    .line 50
    new-instance v0, Lorg/hermit/android/core/AppUtils$Detail;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v4}, Lorg/hermit/android/core/AppUtils$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/core/AppUtils$Detail;->DEBUG:Lorg/hermit/android/core/AppUtils$Detail;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/hermit/android/core/AppUtils$Detail;

    sget-object v1, Lorg/hermit/android/core/AppUtils$Detail;->NONE:Lorg/hermit/android/core/AppUtils$Detail;

    aput-object v1, v0, v2

    sget-object v1, Lorg/hermit/android/core/AppUtils$Detail;->SIMPLE:Lorg/hermit/android/core/AppUtils$Detail;

    aput-object v1, v0, v3

    sget-object v1, Lorg/hermit/android/core/AppUtils$Detail;->DEBUG:Lorg/hermit/android/core/AppUtils$Detail;

    aput-object v1, v0, v4

    sput-object v0, Lorg/hermit/android/core/AppUtils$Detail;->ENUM$VALUES:[Lorg/hermit/android/core/AppUtils$Detail;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hermit/android/core/AppUtils$Detail;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/hermit/android/core/AppUtils$Detail;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/hermit/android/core/AppUtils$Detail;

    return-object p0
.end method

.method public static values()[Lorg/hermit/android/core/AppUtils$Detail;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/hermit/android/core/AppUtils$Detail;->ENUM$VALUES:[Lorg/hermit/android/core/AppUtils$Detail;

    array-length v1, v0

    new-array v2, v1, [Lorg/hermit/android/core/AppUtils$Detail;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
