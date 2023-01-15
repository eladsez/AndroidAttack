.class public final Landroid/support/v4/widget/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/m$f;,
        Landroid/support/v4/widget/m$e;,
        Landroid/support/v4/widget/m$d;,
        Landroid/support/v4/widget/m$c;,
        Landroid/support/v4/widget/m$b;,
        Landroid/support/v4/widget/m$a;,
        Landroid/support/v4/widget/m$g;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/m$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/support/v4/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/m$f;

    invoke-direct {v0}, Landroid/support/v4/widget/m$f;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/m$g;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/m$e;

    invoke-direct {v0}, Landroid/support/v4/widget/m$e;-><init>()V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/widget/m$d;

    invoke-direct {v0}, Landroid/support/v4/widget/m$d;-><init>()V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/widget/m$c;

    invoke-direct {v0}, Landroid/support/v4/widget/m$c;-><init>()V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/widget/m$b;

    invoke-direct {v0}, Landroid/support/v4/widget/m$b;-><init>()V

    goto :goto_0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/widget/m$a;

    invoke-direct {v0}, Landroid/support/v4/widget/m$a;-><init>()V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/support/v4/widget/m$g;

    invoke-direct {v0}, Landroid/support/v4/widget/m$g;-><init>()V

    goto :goto_0

    return-void
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/m$g;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/m$g;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    sget-object v0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/m$g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/m$g;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
