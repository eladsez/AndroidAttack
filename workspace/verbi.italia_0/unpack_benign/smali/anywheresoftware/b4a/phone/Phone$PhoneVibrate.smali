.class public Lanywheresoftware/b4a/phone/Phone$PhoneVibrate;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "PhoneVibrate"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneVibrate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Vibrate(Lanywheresoftware/b4a/BA;J)V
    .locals 3
    .param p0, "ba"    # Lanywheresoftware/b4a/BA;
    .param p1, "TimeMs"    # J

    .prologue
    .line 462
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 463
    .local v0, "v":Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 464
    return-void
.end method
