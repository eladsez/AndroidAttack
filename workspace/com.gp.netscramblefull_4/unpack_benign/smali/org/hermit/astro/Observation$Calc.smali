.class abstract Lorg/hermit/astro/Observation$Calc;
.super Ljava/lang/Object;
.source "Observation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/astro/Observation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Calc"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hermit/astro/Observation$Calc;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/hermit/astro/Observation$Calc;-><init>()V

    return-void
.end method


# virtual methods
.method abstract c(Lorg/hermit/astro/Observation;)V
.end method
