const knex = require('knex');
const knexConfig = require('../knexfile');
const db = knex(knexConfig.development);

module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update,
    remove
};

function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes')
        .where({ id: id })
}

function findSteps(id) {
    return db('steps')
        .where({ scheme_id: id })
}

function add(scheme) {
    return db('schemes')
        .insert(scheme)
}

function addStep(step, scheme_id) {
    console.log(step, scheme_id);

    return db('steps')
        .insert(step)
        .where({scheme_id: scheme_id})
}

function update(changes, id) {
    return db('schemes')
        .update(changes)
        .where({id})
}
function remove(id) {
    return db('schemes')
        .delete(id)
        .where({id})
}

