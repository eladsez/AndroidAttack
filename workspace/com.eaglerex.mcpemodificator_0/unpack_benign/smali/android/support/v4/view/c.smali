.class public Landroid/support/v4/view/c;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/f;

    invoke-direct {v0}, Landroid/support/v4/view/f;-><init>()V

    sput-object v0, Landroid/support/v4/view/c;->a:Landroid/support/v4/view/d;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/e;

    invoke-direct {v0}, Landroid/support/v4/view/e;-><init>()V

    sput-object v0, Landroid/support/v4/view/c;->a:Landroid/support/v4/view/d;

    goto :goto_0
.end method

.method public static a(II)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/c;->a:Landroid/support/v4/view/d;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/d;->a(II)I

    move-result v0

    return v0
.end method
