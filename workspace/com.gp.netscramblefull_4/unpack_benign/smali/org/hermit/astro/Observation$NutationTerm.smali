.class final Lorg/hermit/astro/Observation$NutationTerm;
.super Ljava/lang/Object;
.source "Observation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/astro/Observation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NutationTerm"
.end annotation


# instance fields
.field final D:I

.field final F:I

.field final M:I

.field final M1:I

.field final Δε0:D

.field final Δε1:D

.field final Δψ0:D

.field final Δψ1:D

.field final Ω:I


# direct methods
.method constructor <init>(IIIIIDDDD)V
    .locals 0
    .param p1, "D"    # I
    .param p2, "M"    # I
    .param p3, "M1"    # I
    .param p4, "F"    # I
    .param p5, "\u03a9"    # I
    .param p6, "\u0394\u03c80"    # D
    .param p8, "\u0394\u03c81"    # D
    .param p10, "\u0394\u03b50"    # D
    .param p12, "\u0394\u03b51"    # D

    .prologue
    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    iput p1, p0, Lorg/hermit/astro/Observation$NutationTerm;->D:I

    .line 1069
    iput p2, p0, Lorg/hermit/astro/Observation$NutationTerm;->M:I

    .line 1070
    iput p3, p0, Lorg/hermit/astro/Observation$NutationTerm;->M1:I

    .line 1071
    iput p4, p0, Lorg/hermit/astro/Observation$NutationTerm;->F:I

    .line 1072
    iput p5, p0, Lorg/hermit/astro/Observation$NutationTerm;->Ω:I

    .line 1073
    iput-wide p6, p0, Lorg/hermit/astro/Observation$NutationTerm;->Δψ0:D

    .line 1074
    iput-wide p8, p0, Lorg/hermit/astro/Observation$NutationTerm;->Δψ1:D

    .line 1075
    iput-wide p10, p0, Lorg/hermit/astro/Observation$NutationTerm;->Δε0:D

    .line 1076
    iput-wide p12, p0, Lorg/hermit/astro/Observation$NutationTerm;->Δε1:D

    .line 1077
    return-void
.end method
