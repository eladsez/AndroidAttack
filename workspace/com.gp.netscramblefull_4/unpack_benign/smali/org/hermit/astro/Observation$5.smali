.class Lorg/hermit/astro/Observation$5;
.super Lorg/hermit/astro/Observation$Calc;
.source "Observation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/astro/Observation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/hermit/astro/Observation$Calc;-><init>(Lorg/hermit/astro/Observation$Calc;)V

    .line 1
    return-void
.end method


# virtual methods
.method c(Lorg/hermit/astro/Observation;)V
    .locals 0
    .param p1, "o"    # Lorg/hermit/astro/Observation;

    .prologue
    .line 705
    invoke-static {p1}, Lorg/hermit/astro/Observation;->access$4(Lorg/hermit/astro/Observation;)V

    return-void
.end method
