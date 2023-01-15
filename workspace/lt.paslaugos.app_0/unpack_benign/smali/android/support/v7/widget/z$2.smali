.class Landroid/support/v7/widget/z$2;
.super Landroid/support/v7/widget/ak$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/z;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/z;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/z$2;->a:Landroid/support/v7/widget/z;

    invoke-direct {p0}, Landroid/support/v7/widget/ak$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/ak;II)V
    .locals 0

    iget-object p2, p0, Landroid/support/v7/widget/z$2;->a:Landroid/support/v7/widget/z;

    invoke-virtual {p1}, Landroid/support/v7/widget/ak;->computeHorizontalScrollOffset()I

    move-result p3

    invoke-virtual {p1}, Landroid/support/v7/widget/ak;->computeVerticalScrollOffset()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/support/v7/widget/z;->a(II)V

    return-void
.end method
