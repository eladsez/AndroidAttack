.class public final Lme/grantland/widget/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grantland/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final AutofitTextView:[I

.field public static final AutofitTextView_minTextSize:I = 0x0

.field public static final AutofitTextView_precision:I = 0x1

.field public static final AutofitTextView_sizeToFit:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lme/grantland/widget/b$a;->AutofitTextView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0300ea
        0x7f030101
        0x7f03011f
    .end array-data
.end method
