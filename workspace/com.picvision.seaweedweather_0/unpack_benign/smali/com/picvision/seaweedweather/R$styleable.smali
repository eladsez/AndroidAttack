.class public final Lcom/picvision/seaweedweather/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picvision/seaweedweather/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final PVMobileView:[I

.field public static final PVMobileView_background:I = 0x4

.field public static final PVMobileView_backgroundColor:I = 0x1

.field public static final PVMobileView_isTest:I = 0x0

.field public static final PVMobileView_refreshInterval:I = 0x3

.field public static final PVMobileView_textColor:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/picvision/seaweedweather/R$styleable;->PVMobileView:[I

    .line 431
    return-void

    .line 450
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
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
