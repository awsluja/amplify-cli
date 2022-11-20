import {
  initJSProjectWithProfile, deleteProject, createNewProjectDir, deleteProjectDir, createRandomName,
} from '@aws-amplify/amplify-e2e-core';
import { testSchema } from '../schema-api-directives';

describe('api directives @searchable', () => {
  let projectDir: string;
  let projectName: string;

  beforeEach(async () => {
    projectName = createRandomName();
    projectDir = await createNewProjectDir('searchable');
    await initJSProjectWithProfile(projectDir, {
      name: projectName
    });
  });

  afterEach(async () => {
    await deleteProject(projectDir);
    deleteProjectDir(projectDir);
  });

  it('searchable usage', async () => {
    const testresult = await testSchema(projectDir, 'searchable', 'usage', projectName);
    expect(testresult).toBeTruthy();
  });
});
