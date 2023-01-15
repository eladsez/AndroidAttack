.class public Lorg/hermit/android/widgets/MultistateImageButton;
.super Landroid/widget/ImageButton;
.source "MultistateImageButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "onwatch"


# instance fields
.field private clientListener:Landroid/view/View$OnClickListener;

.field private currentState:I

.field private imageIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "images"    # [I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/widgets/MultistateImageButton;->clientListener:Landroid/view/View$OnClickListener;

    .line 62
    invoke-direct {p0, p3}, Lorg/hermit/android/widgets/MultistateImageButton;->init([I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "images"    # [I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hermit/android/widgets/MultistateImageButton;->clientListener:Landroid/view/View$OnClickListener;

    .line 47
    invoke-direct {p0, p2}, Lorg/hermit/android/widgets/MultistateImageButton;->init([I)V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/widgets/MultistateImageButton;)I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/hermit/android/widgets/MultistateImageButton;->currentState:I

    return v0
.end method

.method static synthetic access$1(Lorg/hermit/android/widgets/MultistateImageButton;)[I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/hermit/android/widgets/MultistateImageButton;->imageIds:[I

    return-object v0
.end method

.method static synthetic access$2(Lorg/hermit/android/widgets/MultistateImageButton;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/hermit/android/widgets/MultistateImageButton;->clientListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private init([I)V
    .locals 1
    .param p1, "images"    # [I

    .prologue
    .line 67
    iput-object p1, p0, Lorg/hermit/android/widgets/MultistateImageButton;->imageIds:[I

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/hermit/android/widgets/MultistateImageButton;->setClickable(Z)V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/hermit/android/widgets/MultistateImageButton;->setState(I)V

    .line 73
    new-instance v0, Lorg/hermit/android/widgets/MultistateImageButton$1;

    invoke-direct {v0, p0}, Lorg/hermit/android/widgets/MultistateImageButton$1;-><init>(Lorg/hermit/android/widgets/MultistateImageButton;)V

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/hermit/android/widgets/MultistateImageButton;->currentState:I

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/hermit/android/widgets/MultistateImageButton;->clientListener:Landroid/view/View$OnClickListener;

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/hermit/android/widgets/MultistateImageButton;->setClickable(Z)V

    .line 101
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "s"    # I

    .prologue
    .line 125
    iput p1, p0, Lorg/hermit/android/widgets/MultistateImageButton;->currentState:I

    .line 127
    iget-object v0, p0, Lorg/hermit/android/widgets/MultistateImageButton;->imageIds:[I

    iget v1, p0, Lorg/hermit/android/widgets/MultistateImageButton;->currentState:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/hermit/android/widgets/MultistateImageButton;->setImageResource(I)V

    .line 128
    return-void
.end method
