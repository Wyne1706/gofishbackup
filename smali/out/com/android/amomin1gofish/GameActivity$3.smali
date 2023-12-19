.class Lcom/android/amomin1gofish/GameActivity$3;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/amomin1gofish/GameActivity;->startServerSocket(Landroid/bluetooth/BluetoothAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private connectedDevicesCount:I

.field final synthetic this$0:Lcom/android/amomin1gofish/GameActivity;

.field final synthetic val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/amomin1gofish/GameActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/android/amomin1gofish/GameActivity$3;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iput-object p2, p0, Lcom/android/amomin1gofish/GameActivity$3;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/amomin1gofish/GameActivity$3;->connectedDevicesCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$3;->this$0:Lcom/android/amomin1gofish/GameActivity;

    iget-object v1, p0, Lcom/android/amomin1gofish/GameActivity$3;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v2, "MyBluetoothApp"

    iget-object v3, v0, Lcom/android/amomin1gofish/GameActivity;->UUID_ID:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/amomin1gofish/GameActivity;->access$002(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    .line 148
    :goto_13
    iget v0, p0, Lcom/android/amomin1gofish/GameActivity$3;->connectedDevicesCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4a

    .line 149
    iget-object v0, p0, Lcom/android/amomin1gofish/GameActivity$3;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v0}, Lcom/android/amomin1gofish/GameActivity;->access$000(Lcom/android/amomin1gofish/GameActivity;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 151
    .local v0, "socket":Landroid/bluetooth/BluetoothSocket;
    if-eqz v0, :cond_49

    .line 152
    iget v1, p0, Lcom/android/amomin1gofish/GameActivity$3;->connectedDevicesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/amomin1gofish/GameActivity$3;->connectedDevicesCount:I

    .line 154
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "deviceName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "adress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$3;->this$0:Lcom/android/amomin1gofish/GameActivity;

    invoke-static {v3, v0}, Lcom/android/amomin1gofish/GameActivity;->access$100(Lcom/android/amomin1gofish/GameActivity;Landroid/bluetooth/BluetoothSocket;)V

    .line 158
    iget-object v3, p0, Lcom/android/amomin1gofish/GameActivity$3;->this$0:Lcom/android/amomin1gofish/GameActivity;

    new-instance v4, Lcom/android/amomin1gofish/GameActivity$3$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/amomin1gofish/GameActivity$3$1;-><init>(Lcom/android/amomin1gofish/GameActivity$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/amomin1gofish/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_49} :catch_4b

    .line 168
    .end local v0    # "socket":Landroid/bluetooth/BluetoothSocket;
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "adress":Ljava/lang/String;
    :cond_49
    goto :goto_13

    .line 171
    :cond_4a
    goto :goto_4f

    .line 169
    :catch_4b
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4f
    return-void
.end method
