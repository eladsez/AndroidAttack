.class Lanywheresoftware/b4a/phone/Phone$PhoneSensors$1;
.super Ljava/lang/Object;
.source "Phone.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->StartListening(Lanywheresoftware/b4a/BA;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/phone/Phone$PhoneSensors;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/Phone$PhoneSensors;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors$1;->this$1:Lanywheresoftware/b4a/phone/Phone$PhoneSensors;

    iput-object p2, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors$1;->val$s:Ljava/lang/String;

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1084
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1088
    iget-object v0, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors$1;->this$1:Lanywheresoftware/b4a/phone/Phone$PhoneSensors;

    iget-object v2, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors$1;->val$s:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    return-void
.end method
