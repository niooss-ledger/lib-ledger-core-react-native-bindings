// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

public abstract class CosmosConfigurationDefaults {
    public static final String COSMOS_DEFAULT_API_ENDPOINT = "http://lite-client-0e27eefb-4031-4859-a88e-249fd241989d.cosmos.bison.run:1317";

    public static final String COSMOS_OBSERVER_WS_ENDPOINT = "";


    private static final class CppProxy extends CosmosConfigurationDefaults
    {
        private final long nativeRef;
        private final AtomicBoolean destroyed = new AtomicBoolean(false);

        private CppProxy(long nativeRef)
        {
            if (nativeRef == 0) throw new RuntimeException("nativeRef is zero");
            this.nativeRef = nativeRef;
        }

        private native void nativeDestroy(long nativeRef);
        public void destroy()
        {
            boolean destroyed = this.destroyed.getAndSet(true);
            if (!destroyed) nativeDestroy(this.nativeRef);
        }
        protected void finalize() throws java.lang.Throwable
        {
            destroy();
            super.finalize();
        }
    }
}