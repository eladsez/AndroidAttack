.class Landroid/support/v4/h/a/c$b;
.super Landroid/support/v4/h/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/h/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/h/a/c$a;-><init>(Landroid/support/v4/h/a/c;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/a/c$b;->a:Landroid/support/v4/h/a/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a/c;->b(I)Landroid/support/v4/h/a/b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/h/a/b;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method
