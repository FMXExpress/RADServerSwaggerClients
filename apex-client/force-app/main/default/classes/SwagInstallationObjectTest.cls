@isTest
private class SwagInstallationObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagInstallationObject installationObject1 = SwagInstallationObject.getExample();
        SwagInstallationObject installationObject2 = installationObject1;
        SwagInstallationObject installationObject3 = new SwagInstallationObject();
        SwagInstallationObject installationObject4 = installationObject3;

        System.assert(installationObject1.equals(installationObject2));
        System.assert(installationObject2.equals(installationObject1));
        System.assert(installationObject1.equals(installationObject1));
        System.assert(installationObject3.equals(installationObject4));
        System.assert(installationObject4.equals(installationObject3));
        System.assert(installationObject3.equals(installationObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagInstallationObject installationObject1 = SwagInstallationObject.getExample();
        SwagInstallationObject installationObject2 = SwagInstallationObject.getExample();
        SwagInstallationObject installationObject3 = new SwagInstallationObject();
        SwagInstallationObject installationObject4 = new SwagInstallationObject();

        System.assert(installationObject1.equals(installationObject2));
        System.assert(installationObject2.equals(installationObject1));
        System.assert(installationObject3.equals(installationObject4));
        System.assert(installationObject4.equals(installationObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagInstallationObject installationObject1 = SwagInstallationObject.getExample();
        SwagInstallationObject installationObject2 = new SwagInstallationObject();

        System.assertEquals(false, installationObject1.equals(installationObject2));
        System.assertEquals(false, installationObject2.equals(installationObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagInstallationObject installationObject1 = SwagInstallationObject.getExample();
        SwagInstallationObject installationObject2 = new SwagInstallationObject();

        System.assertEquals(false, installationObject1.equals('foo'));
        System.assertEquals(false, installationObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagInstallationObject installationObject1 = SwagInstallationObject.getExample();
        SwagInstallationObject installationObject2 = new SwagInstallationObject();
        SwagInstallationObject installationObject3;

        System.assertEquals(false, installationObject1.equals(installationObject3));
        System.assertEquals(false, installationObject2.equals(installationObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagInstallationObject installationObject1 = SwagInstallationObject.getExample();
        SwagInstallationObject installationObject2 = new SwagInstallationObject();

        System.assertEquals(installationObject1.hashCode(), installationObject1.hashCode());
        System.assertEquals(installationObject2.hashCode(), installationObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagInstallationObject installationObject1 = SwagInstallationObject.getExample();
        SwagInstallationObject installationObject2 = SwagInstallationObject.getExample();
        SwagInstallationObject installationObject3 = new SwagInstallationObject();
        SwagInstallationObject installationObject4 = new SwagInstallationObject();

        System.assert(installationObject1.equals(installationObject2));
        System.assert(installationObject3.equals(installationObject4));
        System.assertEquals(installationObject1.hashCode(), installationObject2.hashCode());
        System.assertEquals(installationObject3.hashCode(), installationObject4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        SwagInstallationObject installationObject = new SwagInstallationObject();
        Map<String, String> propertyMappings = installationObject.getPropertyMappings();
        System.assertEquals('id', propertyMappings.get('_id'));
        System.assertEquals('meta', propertyMappings.get('_meta'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagInstallationObject installationObject = new SwagInstallationObject();
        System.assertEquals(new List<String>(), installationObject.channels);
        System.assertEquals(null, installationObject.id);
        System.assertEquals(null, installationObject.deviceToken);
        System.assertEquals(null, installationObject.deviceType);
        System.assertEquals(null, installationObject.meta);
    }
}
