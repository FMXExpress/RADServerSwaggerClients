@isTest
private class SwagInstallationAddedObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagInstallationAddedObject installationAddedObject1 = SwagInstallationAddedObject.getExample();
        SwagInstallationAddedObject installationAddedObject2 = installationAddedObject1;
        SwagInstallationAddedObject installationAddedObject3 = new SwagInstallationAddedObject();
        SwagInstallationAddedObject installationAddedObject4 = installationAddedObject3;

        System.assert(installationAddedObject1.equals(installationAddedObject2));
        System.assert(installationAddedObject2.equals(installationAddedObject1));
        System.assert(installationAddedObject1.equals(installationAddedObject1));
        System.assert(installationAddedObject3.equals(installationAddedObject4));
        System.assert(installationAddedObject4.equals(installationAddedObject3));
        System.assert(installationAddedObject3.equals(installationAddedObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagInstallationAddedObject installationAddedObject1 = SwagInstallationAddedObject.getExample();
        SwagInstallationAddedObject installationAddedObject2 = SwagInstallationAddedObject.getExample();
        SwagInstallationAddedObject installationAddedObject3 = new SwagInstallationAddedObject();
        SwagInstallationAddedObject installationAddedObject4 = new SwagInstallationAddedObject();

        System.assert(installationAddedObject1.equals(installationAddedObject2));
        System.assert(installationAddedObject2.equals(installationAddedObject1));
        System.assert(installationAddedObject3.equals(installationAddedObject4));
        System.assert(installationAddedObject4.equals(installationAddedObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagInstallationAddedObject installationAddedObject1 = SwagInstallationAddedObject.getExample();
        SwagInstallationAddedObject installationAddedObject2 = new SwagInstallationAddedObject();

        System.assertEquals(false, installationAddedObject1.equals(installationAddedObject2));
        System.assertEquals(false, installationAddedObject2.equals(installationAddedObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagInstallationAddedObject installationAddedObject1 = SwagInstallationAddedObject.getExample();
        SwagInstallationAddedObject installationAddedObject2 = new SwagInstallationAddedObject();

        System.assertEquals(false, installationAddedObject1.equals('foo'));
        System.assertEquals(false, installationAddedObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagInstallationAddedObject installationAddedObject1 = SwagInstallationAddedObject.getExample();
        SwagInstallationAddedObject installationAddedObject2 = new SwagInstallationAddedObject();
        SwagInstallationAddedObject installationAddedObject3;

        System.assertEquals(false, installationAddedObject1.equals(installationAddedObject3));
        System.assertEquals(false, installationAddedObject2.equals(installationAddedObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagInstallationAddedObject installationAddedObject1 = SwagInstallationAddedObject.getExample();
        SwagInstallationAddedObject installationAddedObject2 = new SwagInstallationAddedObject();

        System.assertEquals(installationAddedObject1.hashCode(), installationAddedObject1.hashCode());
        System.assertEquals(installationAddedObject2.hashCode(), installationAddedObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagInstallationAddedObject installationAddedObject1 = SwagInstallationAddedObject.getExample();
        SwagInstallationAddedObject installationAddedObject2 = SwagInstallationAddedObject.getExample();
        SwagInstallationAddedObject installationAddedObject3 = new SwagInstallationAddedObject();
        SwagInstallationAddedObject installationAddedObject4 = new SwagInstallationAddedObject();

        System.assert(installationAddedObject1.equals(installationAddedObject2));
        System.assert(installationAddedObject3.equals(installationAddedObject4));
        System.assertEquals(installationAddedObject1.hashCode(), installationAddedObject2.hashCode());
        System.assertEquals(installationAddedObject3.hashCode(), installationAddedObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagInstallationAddedObject installationAddedObject = new SwagInstallationAddedObject();
        Map<String, String> propertyMappings = installationAddedObject.getPropertyMappings();
        System.assertEquals('id', propertyMappings.get('_id'));
    }
}
