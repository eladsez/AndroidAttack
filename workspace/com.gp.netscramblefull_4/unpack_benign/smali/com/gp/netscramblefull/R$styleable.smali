.class public final Lcom/gp/netscramblefull/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/netscramblefull/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final TouchListView:[I

.field public static final TouchListView_dragndrop_background:I = 0x3

.field public static final TouchListView_expanded_height:I = 0x1

.field public static final TouchListView_grabber:I = 0x2

.field public static final TouchListView_normal_height:I = 0x0

.field public static final TouchListView_remove_mode:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gp/netscramblefull/R$styleable;->TouchListView:[I

    .line 344
    return-void

    .line 363
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
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
