.class abstract Lorg/hermit/astro/Body$Calc;
.super Ljava/lang/Object;
.source "Body.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/astro/Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Calc"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hermit/astro/Body$Calc;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lorg/hermit/astro/Body$Calc;-><init>()V

    return-void
.end method


# virtual methods
.method abstract c(Lorg/hermit/astro/Body;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation
.end method
