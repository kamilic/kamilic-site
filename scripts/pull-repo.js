const yargs = require('yargs');
const shelljs = require('shelljs');
const fs = require('fs-extra');
const path = require('path');
const argv = yargs.argv;
const inputMode = argv.single ? 'single' : 'all';
const inputRepoKey = argv.repoKey;

const rootPath = path.resolve(__filename, '../../');
const projectsRootPath = path.join(rootPath, 'projects');
const repoSpecPath = path.join(rootPath, 'configs/git-repos/repo.json');

const repoSpec = require(repoSpecPath);

function pullGitRepo({ folderName, url }) {
	if (folderName && folderName.length === 0) {
		throw Error('该 spec 没有指定 folderName 字段！');
	}

	let targetPath = path.join(projectsRootPath, folderName);
	let isPathExist = fs.existsSync(targetPath);

	console.log('-------- running ---------');

	if (!isPathExist) {
		console.log(`${targetPath} not exists.\n`);
		console.log(`Will clone repo ${url} to path ${targetPath}.`);
		console.log(`Change directory to ${projectsRootPath}.`);
		shelljs.cd(projectsRootPath);
		console.log(`Clone repo ${url} to path ${targetPath}.`);
		shelljs.exec(`git clone ${url} ${folderName}`);
	} else {
		console.log(`${targetPath} do exists.`);
		console.log(`change directory to ${targetPath}.`);
		shelljs.cd(targetPath);
		console.log(`now reset repo.`);
		shelljs.exec('git reset HEAD --hard');
		console.log(`now pull repo ${url}.`);
		shelljs.exec(`git pull`);
	}

	console.log('-------- end ---------');
}

function getRepoSpec(repoKey) {
	if (repoKey in repoSpec) {
		return repoSpec[repoKey];
	} else {
		throw Error('repoKey 不存在！');
	}
}

function pullAllGitRepo() {
	for (let repoKey of Object.keys(repoSpec)) {
		let spec = getRepoSpec(repoKey);
		pullGitRepo(spec);
	}
}

function run(repoKey, mode) {
	switch (mode) {
		case 'single':
			{
				let repoSpec = getRepoSpec(repoKey);
				pullGitRepo(repoSpec);
			}
			break;

		case 'all':
			{
				pullAllGitRepo();
			}
			break;
	}
}

run(inputRepoKey, inputMode);
