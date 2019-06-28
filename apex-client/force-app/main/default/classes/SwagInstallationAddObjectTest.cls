@isTest
private class SwagInstallationAddObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagInstallationAddObject installationAddObject1 = SwagInstallationAddObject.getExample();
        SwagInstallationAddObject installationAddObject2 = installationAddObject1;
        SwagInstallationAddObject installationAddObject3 = new SwagInstallationAddObject();
        SwagInstallationAddObject installationAddObject4 = installationAddObject3;

        System.assert(installationAddObject1.equals(installationAddObject2));
        System.assert(installationAddObject2.equals(installationAddObject1));
        System.assert(installationAddObject1.equals(installationAddObject1));
        System.assert(installationAddObject3.equals(installationAddObject4));
        System.assert(installationAddObject4.equals(installationAddObject3));
        System.assert(installationAddObject3.equals(installationAddObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagInstallationAddObject installationAddObject1 = SwagInstallationAddObject.getExample();
        SwagInstallationAddObject installationAddObject2 = SwagInstallationAddObject.getExample();
        SwagInstallationAddObject installationAddObject3 = new SwagInstallationAddObject();
        SwagInstallationAddObject installationAddObject4 = new SwagInstallationAddObject();

        System.assert(installationAddObject1.equals(installationAddObject2));
        System.assert(installationAddObject2.equals(installationAddObject1));
        System.assert(installationAddObject3.equals(installationAddObject4));
        System.assert(installationAddObject4.equals(installationAddObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagInstallationAddObject installationAddObject1 = SwagInstallationAddObject.getExample();
        SwagInstallationAddObject installationAddObject2 = new SwagInstallationAddObject();

        System.assertEquals(false, installationAddObject1.equals(installationAddObject2));
        System.assertEquals(false, installationAddObject2.equals(installationAddObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagInstallationAddObject installationAddObject1 = SwagInstallationAddObject.getExample();
        SwagInstallationAddObject installationAddObject2 = new SwagInstallationAddObject();

        System.assertEquals(false, installationAddObject1.equals('foo'));
        System.assertEquals(false, installationAddObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagInstallationAddObject installationAddObject1 = SwagInstallationAddObject.getExample();
        SwagInstallationAddObject installationAddObject2 = new SwagInstallationAddObject();
        SwagInstallationAddObject installationAddObject3;

        System.assertEquals(false, installationAddObject1.equals(installationAddObject3));
        System.assertEquals(false, installationAddObject2.equals(installationAddObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagInstallationAddObject installationAddObject1 = SwagInstallationAddObject.getExample();
        SwagInstallationAddObject installationAddObject2 = new SwagInstallationAddObject();

        System.assertEquals(installationAddObject1.hashCode(), installationAddObject1.hashCode());
        System.assertEquals(installationAddObject2.hashCode(), installationAddObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagInstallationAddObject installationAddObject1 = SwagInstallationAddObject.getExample();
        SwagInstallationAddObject installationAddObject2 = SwagInstallationAddObject.getExample();
        SwagInstallationAddObject installationAddObject3 = new SwagInstallationAddObject();
        SwagInstallationAddObject installationAddObject4 = new SwagInstallationAddObject();

        System.assert(installationAddObject1.equals(installationAddObject2));
        System.assert(installationAddObject3.equals(installationAddObject4));
        System.assertEquals(installationAddObject1.hashCode(), installationAddObject2.hashCode());
        System.assertEquals(installationAddObject3.hashCode(), installationAddObject4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagInstallationAddObject installationAddObject = new SwagInstallationAddObject();
        System.assertEquals(new List<String>(), installationAddObject.channels);
        System.assertEquals(null, installationAddObject.deviceToken);
        System.assertEquals(null, installationAddObject.deviceType);
    }
}
