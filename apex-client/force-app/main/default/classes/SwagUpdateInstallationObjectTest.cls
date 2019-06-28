@isTest
private class SwagUpdateInstallationObjectTest {
    @isTest
    private static void equalsSameInstance() {
        SwagUpdateInstallationObject updateInstallationObject1 = SwagUpdateInstallationObject.getExample();
        SwagUpdateInstallationObject updateInstallationObject2 = updateInstallationObject1;
        SwagUpdateInstallationObject updateInstallationObject3 = new SwagUpdateInstallationObject();
        SwagUpdateInstallationObject updateInstallationObject4 = updateInstallationObject3;

        System.assert(updateInstallationObject1.equals(updateInstallationObject2));
        System.assert(updateInstallationObject2.equals(updateInstallationObject1));
        System.assert(updateInstallationObject1.equals(updateInstallationObject1));
        System.assert(updateInstallationObject3.equals(updateInstallationObject4));
        System.assert(updateInstallationObject4.equals(updateInstallationObject3));
        System.assert(updateInstallationObject3.equals(updateInstallationObject3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        SwagUpdateInstallationObject updateInstallationObject1 = SwagUpdateInstallationObject.getExample();
        SwagUpdateInstallationObject updateInstallationObject2 = SwagUpdateInstallationObject.getExample();
        SwagUpdateInstallationObject updateInstallationObject3 = new SwagUpdateInstallationObject();
        SwagUpdateInstallationObject updateInstallationObject4 = new SwagUpdateInstallationObject();

        System.assert(updateInstallationObject1.equals(updateInstallationObject2));
        System.assert(updateInstallationObject2.equals(updateInstallationObject1));
        System.assert(updateInstallationObject3.equals(updateInstallationObject4));
        System.assert(updateInstallationObject4.equals(updateInstallationObject3));
    }

    @isTest
    private static void notEqualsUnlikeInstance() {
        SwagUpdateInstallationObject updateInstallationObject1 = SwagUpdateInstallationObject.getExample();
        SwagUpdateInstallationObject updateInstallationObject2 = new SwagUpdateInstallationObject();

        System.assertEquals(false, updateInstallationObject1.equals(updateInstallationObject2));
        System.assertEquals(false, updateInstallationObject2.equals(updateInstallationObject1));
    }

    @isTest
    private static void notEqualsDifferentType() {
        SwagUpdateInstallationObject updateInstallationObject1 = SwagUpdateInstallationObject.getExample();
        SwagUpdateInstallationObject updateInstallationObject2 = new SwagUpdateInstallationObject();

        System.assertEquals(false, updateInstallationObject1.equals('foo'));
        System.assertEquals(false, updateInstallationObject2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        SwagUpdateInstallationObject updateInstallationObject1 = SwagUpdateInstallationObject.getExample();
        SwagUpdateInstallationObject updateInstallationObject2 = new SwagUpdateInstallationObject();
        SwagUpdateInstallationObject updateInstallationObject3;

        System.assertEquals(false, updateInstallationObject1.equals(updateInstallationObject3));
        System.assertEquals(false, updateInstallationObject2.equals(updateInstallationObject3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        SwagUpdateInstallationObject updateInstallationObject1 = SwagUpdateInstallationObject.getExample();
        SwagUpdateInstallationObject updateInstallationObject2 = new SwagUpdateInstallationObject();

        System.assertEquals(updateInstallationObject1.hashCode(), updateInstallationObject1.hashCode());
        System.assertEquals(updateInstallationObject2.hashCode(), updateInstallationObject2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        SwagUpdateInstallationObject updateInstallationObject1 = SwagUpdateInstallationObject.getExample();
        SwagUpdateInstallationObject updateInstallationObject2 = SwagUpdateInstallationObject.getExample();
        SwagUpdateInstallationObject updateInstallationObject3 = new SwagUpdateInstallationObject();
        SwagUpdateInstallationObject updateInstallationObject4 = new SwagUpdateInstallationObject();

        System.assert(updateInstallationObject1.equals(updateInstallationObject2));
        System.assert(updateInstallationObject3.equals(updateInstallationObject4));
        System.assertEquals(updateInstallationObject1.hashCode(), updateInstallationObject2.hashCode());
        System.assertEquals(updateInstallationObject3.hashCode(), updateInstallationObject4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        SwagUpdateInstallationObject updateInstallationObject = new SwagUpdateInstallationObject();
        System.assertEquals(new List<String>(), updateInstallationObject.channels);
    }
}
