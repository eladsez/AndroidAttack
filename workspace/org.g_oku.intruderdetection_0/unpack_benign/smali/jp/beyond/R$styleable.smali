.class public final Ljp/beyond/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BeadOptions:[I

.field public static final BeadOptions_is_overlay:I = 0x2

.field public static final BeadOptions_position:I = 0x3

.field public static final BeadOptions_refresh_rate:I = 0x1

.field public static final BeadOptions_sid:I = 0x0

.field public static final BeadOptions_transitionAnimation:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljp/beyond/R$styleable;->BeadOptions:[I

    .line 221
    return-void

    .line 148
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
