.class public Landroid/support/v4/view/aa;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/ac;

    invoke-direct {v0}, Landroid/support/v4/view/ac;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/ad;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/ab;

    invoke-direct {v0}, Landroid/support/v4/view/ab;-><init>()V

    sput-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/ad;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/ad;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ad;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/aa;->a:Landroid/support/v4/view/ad;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ad;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
