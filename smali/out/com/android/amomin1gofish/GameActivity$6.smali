.class Lcom/android/amomin1gofish/GameActivity$6;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity;->showDeviceListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/amomin1gofish/GameActivity;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/amomin1gofish/GameActivity;

    .line 371
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$6;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 374
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$6;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v0, v0, Lcom/android/amomin1gofish/GameActivity;->deviceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    .local v0, "selectedDevice":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 377
    .local v1, "deviceAddress":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 379
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$6;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v3, v2}, Lcom/android/amomin1gofish/GameActivity;->access$500(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothDevice;)V

    .line 380
    return-void
.end method
