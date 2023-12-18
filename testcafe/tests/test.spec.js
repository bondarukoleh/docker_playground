fixture`First fixture`;

test(`Reach the example page`, async t => {
  await t.navigateTo(`www.google.com`);
  console.log(await t.browser);
});
