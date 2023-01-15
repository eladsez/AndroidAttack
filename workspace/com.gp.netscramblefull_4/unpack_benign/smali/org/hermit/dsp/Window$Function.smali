.class public final enum Lorg/hermit/dsp/Window$Function;
.super Ljava/lang/Enum;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/dsp/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Function"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/hermit/dsp/Window$Function;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLACKMAN_HARRIS:Lorg/hermit/dsp/Window$Function;

.field private static final synthetic ENUM$VALUES:[Lorg/hermit/dsp/Window$Function;

.field public static final enum GAUSS:Lorg/hermit/dsp/Window$Function;

.field public static final enum RECTANGULAR:Lorg/hermit/dsp/Window$Function;

.field public static final enum WEEDON_GAUSS:Lorg/hermit/dsp/Window$Function;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lorg/hermit/dsp/Window$Function;

    const-string v1, "RECTANGULAR"

    invoke-direct {v0, v1, v2}, Lorg/hermit/dsp/Window$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/dsp/Window$Function;->RECTANGULAR:Lorg/hermit/dsp/Window$Function;

    .line 41
    new-instance v0, Lorg/hermit/dsp/Window$Function;

    const-string v1, "BLACKMAN_HARRIS"

    invoke-direct {v0, v1, v3}, Lorg/hermit/dsp/Window$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/dsp/Window$Function;->BLACKMAN_HARRIS:Lorg/hermit/dsp/Window$Function;

    .line 44
    new-instance v0, Lorg/hermit/dsp/Window$Function;

    const-string v1, "GAUSS"

    invoke-direct {v0, v1, v4}, Lorg/hermit/dsp/Window$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/dsp/Window$Function;->GAUSS:Lorg/hermit/dsp/Window$Function;

    .line 47
    new-instance v0, Lorg/hermit/dsp/Window$Function;

    const-string v1, "WEEDON_GAUSS"

    invoke-direct {v0, v1, v5}, Lorg/hermit/dsp/Window$Function;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/dsp/Window$Function;->WEEDON_GAUSS:Lorg/hermit/dsp/Window$Function;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/hermit/dsp/Window$Function;

    sget-object v1, Lorg/hermit/dsp/Window$Function;->RECTANGULAR:Lorg/hermit/dsp/Window$Function;

    aput-object v1, v0, v2

    sget-object v1, Lorg/hermit/dsp/Window$Function;->BLACKMAN_HARRIS:Lorg/hermit/dsp/Window$Function;

    aput-object v1, v0, v3

    sget-object v1, Lorg/hermit/dsp/Window$Function;->GAUSS:Lorg/hermit/dsp/Window$Function;

    aput-object v1, v0, v4

    sget-object v1, Lorg/hermit/dsp/Window$Function;->WEEDON_GAUSS:Lorg/hermit/dsp/Window$Function;

    aput-object v1, v0, v5

    sput-object v0, Lorg/hermit/dsp/Window$Function;->ENUM$VALUES:[Lorg/hermit/dsp/Window$Function;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hermit/dsp/Window$Function;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/hermit/dsp/Window$Function;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/hermit/dsp/Window$Function;

    return-object p0
.end method

.method public static values()[Lorg/hermit/dsp/Window$Function;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/hermit/dsp/Window$Function;->ENUM$VALUES:[Lorg/hermit/dsp/Window$Function;

    array-length v1, v0

    new-array v2, v1, [Lorg/hermit/dsp/Window$Function;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
