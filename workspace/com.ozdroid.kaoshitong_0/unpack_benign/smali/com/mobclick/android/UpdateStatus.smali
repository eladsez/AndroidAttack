.class public Lcom/mobclick/android/UpdateStatus;
.super Ljava/lang/Object;


# static fields
.field public static No:I

.field public static NoneWifi:I

.field public static Timeout:I

.field public static Yes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/mobclick/android/UpdateStatus;->Yes:I

    const/4 v0, 0x1

    sput v0, Lcom/mobclick/android/UpdateStatus;->No:I

    const/4 v0, 0x2

    sput v0, Lcom/mobclick/android/UpdateStatus;->NoneWifi:I

    const/4 v0, 0x3

    sput v0, Lcom/mobclick/android/UpdateStatus;->Timeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
