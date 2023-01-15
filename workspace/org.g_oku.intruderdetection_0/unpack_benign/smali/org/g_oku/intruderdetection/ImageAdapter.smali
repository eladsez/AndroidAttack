.class public Lorg/g_oku/intruderdetection/ImageAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/g_oku/intruderdetection/ImageItem;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p1, p0, Lorg/g_oku/intruderdetection/ImageAdapter;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x64

    const/4 v4, -0x2

    .line 37
    invoke-virtual {p0, p1}, Lorg/g_oku/intruderdetection/ImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/g_oku/intruderdetection/ImageItem;

    .line 39
    .local v0, "item":Lorg/g_oku/intruderdetection/ImageItem;
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/ImageAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    .local v2, "view":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    iget-object v3, v0, Lorg/g_oku/intruderdetection/ImageItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 45
    new-instance v1, Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;

    iget-object v3, p0, Lorg/g_oku/intruderdetection/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;-><init>(Lorg/g_oku/intruderdetection/ImageAdapter;Landroid/content/Context;)V

    .line 46
    .local v1, "l":Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {v1, v2}, Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;->addView(Landroid/view/View;)V

    .line 49
    return-object v1
.end method
