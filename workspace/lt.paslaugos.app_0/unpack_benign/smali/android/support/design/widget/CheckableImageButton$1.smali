.class Landroid/support/design/widget/CheckableImageButton$1;
.super Landroid/support/v4/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/CheckableImageButton;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CheckableImageButton;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/CheckableImageButton$1;->a:Landroid/support/design/widget/CheckableImageButton;

    invoke-direct {p0}, Landroid/support/v4/h/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/h/a/b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/h/b;->a(Landroid/view/View;Landroid/support/v4/h/a/b;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/support/v4/h/a/b;->a(Z)V

    iget-object p1, p0, Landroid/support/design/widget/CheckableImageButton$1;->a:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {p1}, Landroid/support/design/widget/CheckableImageButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/support/v4/h/a/b;->b(Z)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/h/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Landroid/support/design/widget/CheckableImageButton$1;->a:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {p1}, Landroid/support/design/widget/CheckableImageButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method
