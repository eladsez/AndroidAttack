.class Lanywheresoftware/b4a/phone/Phone$PhoneOrientation$1;
.super Ljava/lang/Object;
.source "Phone.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/Phone$PhoneOrientation;->StartListening(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/phone/Phone$PhoneOrientation;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/Phone$PhoneOrientation;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/Phone$PhoneOrientation$1;->this$1:Lanywheresoftware/b4a/phone/Phone$PhoneOrientation;

    iput-object p2, p0, Lanywheresoftware/b4a/phone/Phone$PhoneOrientation$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/phone/Phone$PhoneOrientation$1;->val$s:Ljava/lang/String;

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 950
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 954
    iget-object v0, p0, Lanywheresoftware/b4a/phone/Phone$PhoneOrientation$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$PhoneOrientation$1;->val$s:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, p0, v1, v2}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    return-void
.end method
