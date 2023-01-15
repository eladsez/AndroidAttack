.class public Lanywheresoftware/b4a/BALayout;
.super Landroid/view/ViewGroup;
.source "BALayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/BALayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final BOTH:I = 0x2

.field public static final BOTTOM:I = 0x1

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I

.field private static deviceScale:F

.field private static scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput v0, Lanywheresoftware/b4a/BALayout;->scale:F

    .line 14
    sput v0, Lanywheresoftware/b4a/BALayout;->deviceScale:F

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method static synthetic access$0()F
    .locals 1

    .prologue
    .line 13
    sget v0, Lanywheresoftware/b4a/BALayout;->scale:F

    return v0
.end method

.method public static getDeviceScale()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lanywheresoftware/b4a/BALayout;->deviceScale:F

    return v0
.end method

.method public static setDeviceScale(F)V
    .locals 0
    .param p0, "scale"    # F

    .prologue
    .line 21
    sput p0, Lanywheresoftware/b4a/BALayout;->deviceScale:F

    .line 22
    return-void
.end method

.method public static setUserScale(F)V
    .locals 1
    .param p0, "userScale"    # F

    .prologue
    .line 24
    sget v0, Lanywheresoftware/b4a/BALayout;->deviceScale:F

    invoke-static {v0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lanywheresoftware/b4a/BALayout;->scale:F

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    sget v0, Lanywheresoftware/b4a/BALayout;->deviceScale:F

    div-float/2addr v0, p0

    sput v0, Lanywheresoftware/b4a/BALayout;->scale:F

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v9, 0x0

    .line 34
    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getChildCount()I

    move-result v1

    .line 35
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 52
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/BALayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lanywheresoftware/b4a/BALayout$LayoutParams;

    if-eqz v4, :cond_2

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lanywheresoftware/b4a/BALayout$LayoutParams;

    .line 41
    .local v3, "lp":Lanywheresoftware/b4a/BALayout$LayoutParams;
    iget v4, v3, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    iget v5, v3, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    .line 42
    iget v6, v3, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 43
    iget v7, v3, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 41
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 35
    .end local v3    # "lp":Lanywheresoftware/b4a/BALayout$LayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v9, v9, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lanywheresoftware/b4a/BALayout;->measureChildren(II)V

    .line 57
    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, p1}, Lanywheresoftware/b4a/BALayout;->resolveSize(II)I

    move-result v0

    .line 58
    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, p2}, Lanywheresoftware/b4a/BALayout;->resolveSize(II)I

    move-result v1

    .line 57
    invoke-virtual {p0, v0, v1}, Lanywheresoftware/b4a/BALayout;->setMeasuredDimension(II)V

    .line 59
    return-void
.end method
