.class public Landroid/support/design/widget/CheckableImageButton;
.super Landroid/support/v7/widget/p;

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final a:[I


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/widget/CheckableImageButton;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/a/a$a;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/support/design/widget/CheckableImageButton$1;

    invoke-direct {p1, p0}, Landroid/support/design/widget/CheckableImageButton$1;-><init>(Landroid/support/design/widget/CheckableImageButton;)V

    invoke-static {p0, p1}, Landroid/support/v4/h/q;->a(Landroid/view/View;Landroid/support/v4/h/b;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/CheckableImageButton;->b:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/CheckableImageButton;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/design/widget/CheckableImageButton;->a:[I

    array-length v0, v0

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/support/v7/widget/p;->onCreateDrawableState(I)[I

    move-result-object p1

    sget-object v0, Landroid/support/design/widget/CheckableImageButton;->a:[I

    invoke-static {p1, v0}, Landroid/support/design/widget/CheckableImageButton;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/p;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/CheckableImageButton;->b:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/design/widget/CheckableImageButton;->b:Z

    invoke-virtual {p0}, Landroid/support/design/widget/CheckableImageButton;->refreshDrawableState()V

    const/16 p1, 0x800

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CheckableImageButton;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/CheckableImageButton;->b:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    return-void
.end method