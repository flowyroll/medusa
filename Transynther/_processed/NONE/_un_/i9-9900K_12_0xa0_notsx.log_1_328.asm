.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xae29, %r9
nop
nop
nop
xor $7936, %rcx
movups (%r9), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
xor $17615, %rdi
lea addresses_D_ht+0x7599, %rbx
nop
nop
nop
nop
nop
add $26766, %r9
movl $0x61626364, (%rbx)
nop
cmp $13379, %r9
lea addresses_WT_ht+0xf271, %r14
nop
nop
nop
add $61966, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
inc %rbx
lea addresses_D_ht+0x12679, %rsi
lea addresses_A_ht+0x7eb9, %rdi
nop
nop
nop
nop
add $51760, %r12
mov $75, %rcx
rep movsb
nop
nop
and $48925, %rcx
lea addresses_WT_ht+0xedb9, %rbx
nop
nop
nop
nop
nop
and $21601, %rcx
movl $0x61626364, (%rbx)
nop
nop
nop
add $35764, %r14
lea addresses_A_ht+0x3759, %r12
nop
nop
nop
and $53848, %rsi
movb (%r12), %cl
nop
nop
nop
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x2cb9, %rsi
lea addresses_WC+0x1bcb9, %rdi
clflush (%rdi)
xor %r12, %r12
mov $48, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_WT+0x12799, %rbx
nop
and %rbp, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
nop
add $13041, %rbx

// Store
lea addresses_D+0x1f8b9, %r12
nop
nop
nop
dec %rbx
movl $0x51525354, (%r12)
sub %rcx, %rcx

// REPMOV
mov $0xfa7, %rsi
lea addresses_UC+0x2cb9, %rdi
nop
sub $2401, %r13
mov $89, %rcx
rep movsl
sub %rsi, %rsi

// Faulty Load
lea addresses_UC+0x2cb9, %r13
nop
nop
nop
nop
nop
add $63995, %rcx
mov (%r13), %r12w
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_P', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 0, 'same': True}}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'b2': 1}
b2
*/
