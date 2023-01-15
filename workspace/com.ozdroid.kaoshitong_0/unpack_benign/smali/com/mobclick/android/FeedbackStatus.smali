.class public Lcom/mobclick/android/FeedbackStatus;
.super Ljava/lang/Object;


# static fields
.field public static DISCONNECT:I

.field public static FAILED:I

.field public static SUCCEED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/mobclick/android/FeedbackStatus;->SUCCEED:I

    const/4 v0, 0x1

    sput v0, Lcom/mobclick/android/FeedbackStatus;->FAILED:I

    const/4 v0, 0x2

    sput v0, Lcom/mobclick/android/FeedbackStatus;->DISCONNECT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
