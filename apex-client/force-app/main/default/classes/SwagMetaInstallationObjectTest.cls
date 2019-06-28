@isTest
private class SwagMetaInstallationObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagMetaInstallationObject metaInstallationObject1 = SwagMetaInstallationObject.getExample();
        SwagMetaInstallationObject metaInstallationObject2 = metaInstallationObject1;
        SwagMetaInstallationObject metaInstallationObject3 = new SwagMetaInstallationObject();
        SwagMetaInstallationObject metaInstallationObject4 = metaInstallationObject3;

        System.assert(metaInstallationObject1.equals(metaInstallationObject2));
        System.assert(metaInstallationObject2.equals(metaInstallationObject1));
        System.assert(metaInstallationObject1.equals(metaInstallationObject1));
        System.assert(metaInstallationObject3.equals(metaInstallationObject4));
        System.assert(metaInstallationObject4.equals(metaInstallationObject3));
        System.assert(metaInstallationObject3.equals(metaInstallationObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagMetaInstallationObject metaInstallationObject1 = SwagMetaInstallationObject.getExample();
        SwagMetaInstallationObject metaInstallationObject2 = SwagMetaInstallationObject.getExample();
        SwagMetaInstallationObject metaInstallationObject3 = new SwagMetaInstallationObject();
        SwagMetaInstallationObject metaInstallationObject4 = new SwagMetaInstallationObject();

        System.assert(metaInstallationObject1.equals(metaInstallationObject2));
        System.assert(metaInstallationObject2.equals(metaInstallationObject1));
        System.assert(metaInstallationObject3.equals(metaInstallationObject4));
        System.assert(metaInstallationObject4.equals(metaInstallationObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagMetaInstallationObject metaInstallationObject1 = SwagMetaInstallationObject.getExample();
        SwagMetaInstallationObject metaInstallationObject2 = new SwagMetaInstallationObject();

        System.assertEquals(false, metaInstallationObject1.equals(metaInstallationObject2));
        System.assertEquals(false, metaInstallationObject2.equals(metaInstallationObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagMetaInstallationObject metaInstallationObject1 = SwagMetaInstallationObject.getExample();
        SwagMetaInstallationObject metaInstallationObject2 = new SwagMetaInstallationObject();

        System.assertEquals(false, metaInstallationObject1.equals('foo'));
        System.assertEquals(false, metaInstallationObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagMetaInstallationObject metaInstallationObject1 = SwagMetaInstallationObject.getExample();
        SwagMetaInstallationObject metaInstallationObject2 = new SwagMetaInstallationObject();
        SwagMetaInstallationObject metaInstallationObject3;

        System.assertEquals(false, metaInstallationObject1.equals(metaInstallationObject3));
        System.assertEquals(false, metaInstallationObject2.equals(metaInstallationObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagMetaInstallationObject metaInstallationObject1 = SwagMetaInstallationObject.getExample();
        SwagMetaInstallationObject metaInstallationObject2 = new SwagMetaInstallationObject();

        System.assertEquals(metaInstallationObject1.hashCode(), metaInstallationObject1.hashCode());
        System.assertEquals(metaInstallationObject2.hashCode(), metaInstallationObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagMetaInstallationObject metaInstallationObject1 = SwagMetaInstallationObject.getExample();
        SwagMetaInstallationObject metaInstallationObject2 = SwagMetaInstallationObject.getExample();
        SwagMetaInstallationObject metaInstallationObject3 = new SwagMetaInstallationObject();
        SwagMetaInstallationObject metaInstallationObject4 = new SwagMetaInstallationObject();

        System.assert(metaInstallationObject1.equals(metaInstallationObject2));
        System.assert(metaInstallationObject3.equals(metaInstallationObject4));
        System.assertEquals(metaInstallationObject1.hashCode(), metaInstallationObject2.hashCode());
        System.assertEquals(metaInstallationObject3.hashCode(), metaInstallationObject4.hashCode());
    }
}
