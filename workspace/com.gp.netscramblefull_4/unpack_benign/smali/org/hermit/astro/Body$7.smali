.class Lorg/hermit/astro/Body$7;
.super Lorg/hermit/astro/Body$Calc;
.source "Body.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/astro/Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/hermit/astro/Body$Calc;-><init>(Lorg/hermit/astro/Body$Calc;)V

    .line 1
    return-void
.end method


# virtual methods
.method c(Lorg/hermit/astro/Body;)V
    .locals 0
    .param p1, "b"    # Lorg/hermit/astro/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/hermit/astro/AstroError;
        }
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p1}, Lorg/hermit/astro/Body;->calcApparentSize()V

    return-void
.end method