package org.alonso.cicd_test.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static org.alonso.cicd_test.controller.TestCategories.UT;
import static org.junit.jupiter.api.Assertions.assertTrue;

@Tag(UT)
class HelloControllerTest {
    @DisplayName("Dummy test successful")
    @Test
    void dummySuccessTest() {
        assertTrue(true);
    }
}