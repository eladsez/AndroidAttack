.class public final Lorg/hermit/geo/PointOfInterest$POS;
.super Lorg/hermit/geo/PointOfInterest;
.source "PointOfInterest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/geo/PointOfInterest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "POS"
.end annotation


# instance fields
.field private final position:Lorg/hermit/geo/Position;


# direct methods
.method constructor <init>(DDLjava/lang/String;)V
    .locals 1
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "n"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p5}, Lorg/hermit/geo/PointOfInterest;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lorg/hermit/geo/Position;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/hermit/geo/Position;-><init>(DD)V

    iput-object v0, p0, Lorg/hermit/geo/PointOfInterest$POS;->position:Lorg/hermit/geo/Position;

    .line 141
    return-void
.end method


# virtual methods
.method public final distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;
    .locals 1
    .param p1, "pos"    # Lorg/hermit/geo/Position;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/hermit/geo/PointOfInterest$POS;->position:Lorg/hermit/geo/Position;

    invoke-virtual {p1, v0}, Lorg/hermit/geo/Position;->distance(Lorg/hermit/geo/Position;)Lorg/hermit/geo/Distance;

    move-result-object v0

    return-object v0
.end method
