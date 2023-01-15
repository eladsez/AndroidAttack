.class public Lcom/picvision/seaweedweather/views/DownloadImageView;
.super Landroid/widget/ImageView;
.source "DownloadImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;
    }
.end annotation


# instance fields
.field private canva:Landroid/graphics/Canvas;

.field private context:Landroid/content/Context;

.field private flag:Z

.field private savePath:Ljava/lang/String;

.field private thread:Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->flag:Z

    .line 45
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->context:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->flag:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->flag:Z

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/picvision/seaweedweather/views/DownloadImageView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/picvision/seaweedweather/views/DownloadImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->savePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/picvision/seaweedweather/views/DownloadImageView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/picvision/seaweedweather/views/DownloadImageView;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->flag:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/Canvas;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->canva:Landroid/graphics/Canvas;

    .line 52
    const v0, 0x7f02003c

    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/views/DownloadImageView;->setImageResource(I)V

    .line 53
    new-instance v0, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;

    invoke-direct {v0, p0}, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;-><init>(Lcom/picvision/seaweedweather/views/DownloadImageView;)V

    iput-object v0, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->thread:Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;

    .line 54
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->thread:Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;

    invoke-virtual {v0}, Lcom/picvision/seaweedweather/views/DownloadImageView$DownloadImage;->start()V

    .line 55
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method

.method public reDraw()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->canva:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lcom/picvision/seaweedweather/views/DownloadImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/picvision/seaweedweather/views/DownloadImageView;->url:Ljava/lang/String;

    .line 39
    return-void
.end method
