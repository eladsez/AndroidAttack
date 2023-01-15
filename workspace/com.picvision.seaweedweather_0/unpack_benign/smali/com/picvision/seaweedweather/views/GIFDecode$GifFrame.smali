.class Lcom/picvision/seaweedweather/views/GIFDecode$GifFrame;
.super Ljava/lang/Object;
.source "GIFDecode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/views/GIFDecode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "im"    # Landroid/graphics/Bitmap;
    .param p2, "del"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/GIFDecode$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 80
    iput p2, p0, Lcom/picvision/seaweedweather/views/GIFDecode$GifFrame;->delay:I

    .line 81
    return-void
.end method
