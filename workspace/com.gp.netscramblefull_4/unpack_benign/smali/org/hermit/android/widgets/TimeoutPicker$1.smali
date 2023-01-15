.class Lorg/hermit/android/widgets/TimeoutPicker$1;
.super Ljava/lang/Object;
.source "TimeoutPicker.java"

# interfaces
.implements Lorg/hermit/android/widgets/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/widgets/TimeoutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final charBuf:[C


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$1;->charBuf:[C

    .line 1
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$1;->charBuf:[C

    const/4 v1, 0x0

    div-int/lit8 v2, p1, 0xa

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 350
    iget-object v0, p0, Lorg/hermit/android/widgets/TimeoutPicker$1;->charBuf:[C

    const/4 v1, 0x1

    rem-int/lit8 v2, p1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 351
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/hermit/android/widgets/TimeoutPicker$1;->charBuf:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
