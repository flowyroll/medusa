.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1b5fa, %rsi
lea addresses_normal_ht+0xf9fa, %rdi
nop
nop
nop
and %r10, %r10
mov $111, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0xe99a, %r8
clflush (%r8)
nop
and %rdi, %rdi
movl $0x61626364, (%r8)
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_UC+0x1c5fa, %r10
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, (%r10)
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_UC+0x12ffa, %r12
nop
add $181, %rdi
mov (%r12), %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'29': 5, 'e0': 1262, 'cc': 1, '46': 6315, 'ff': 12371, '53': 1844, 'de': 20, '01': 4, '00': 7}
ff e0 ff ff ff 46 46 ff 46 ff e0 46 ff ff ff 46 ff e0 46 46 46 ff ff 46 ff 53 ff 46 ff ff e0 46 ff ff 53 ff e0 ff ff ff 46 ff ff ff 46 ff ff e0 ff ff 46 53 ff 46 ff e0 ff ff 46 ff ff ff ff ff e0 46 ff ff ff 46 ff e0 53 46 ff 46 46 ff 46 46 53 ff ff 46 ff ff 53 ff 46 ff ff ff ff e0 46 ff e0 53 46 46 ff ff ff 46 ff 53 ff ff ff ff ff 46 46 ff 46 ff 46 ff ff ff 46 ff 53 ff ff 53 ff 46 46 ff 46 46 ff ff 46 ff ff ff ff 46 ff 46 ff 46 ff ff 46 ff 46 46 ff ff ff ff e0 ff ff ff ff ff ff 53 53 46 ff e0 46 46 46 ff 46 ff ff ff 46 ff 46 ff ff 46 46 ff 46 46 46 46 ff ff ff ff ff ff 46 46 53 ff 53 ff 46 ff ff 46 46 ff 46 ff 46 ff 46 ff ff 46 ff ff ff e0 46 ff ff ff ff ff ff ff 46 46 ff 46 ff ff ff 53 ff 46 ff ff ff 46 ff ff ff ff 46 46 ff e0 ff ff e0 ff 53 ff ff 46 ff e0 ff ff ff 46 46 ff e0 46 46 ff ff 46 ff 53 ff 46 46 ff ff 46 ff ff 46 46 ff ff ff 46 ff ff 46 ff ff ff e0 ff ff 53 ff ff 46 ff ff e0 ff 46 ff ff e0 ff ff ff e0 ff ff 46 ff ff ff ff ff ff ff 46 ff ff ff 53 ff e0 ff ff ff ff ff 46 ff 46 46 46 ff ff 46 ff ff ff ff ff e0 ff 46 46 53 ff ff ff 46 46 ff 46 ff 53 ff ff 46 ff ff ff 46 ff e0 ff e0 46 ff ff 46 ff ff e0 ff 46 ff 46 53 ff ff ff ff 46 ff 46 53 53 ff ff 46 ff 46 46 ff 46 ff ff de ff ff ff 53 ff e0 ff 46 46 ff 46 53 ff ff 46 ff ff 46 46 ff 46 ff ff ff ff 46 46 ff 46 ff 46 ff e0 ff ff 53 46 ff ff ff ff e0 ff ff 46 53 ff 46 ff 46 ff e0 ff e0 ff ff ff 53 46 ff ff 46 ff ff ff 46 ff 46 ff 46 ff e0 ff 53 ff ff ff ff ff 46 ff 46 ff 46 46 ff e0 46 46 46 ff 46 46 46 ff ff ff ff ff ff ff ff 46 ff ff 46 ff e0 46 46 46 ff ff 46 46 53 ff ff 53 ff 53 46 53 ff ff ff ff 46 ff ff ff 46 ff 46 46 46 ff 46 ff ff 46 ff ff 46 ff 46 53 ff ff ff ff 46 ff ff 46 ff 46 46 ff ff 46 ff 46 ff ff 46 ff ff 53 ff ff ff ff ff e0 ff ff ff ff ff ff ff 46 ff e0 53 53 53 46 ff ff ff 46 53 ff ff 46 ff 53 46 ff 46 ff ff ff 46 53 46 46 ff ff 46 46 53 ff ff 46 ff ff 46 53 ff 46 46 ff 53 ff ff 46 ff ff 46 ff ff ff e0 ff e0 46 ff 53 53 ff 53 cc ff 53 ff ff ff ff 46 ff 46 46 46 ff ff ff ff ff ff ff 46 ff ff e0 ff ff ff 46 ff 53 ff 46 ff ff e0 ff e0 ff e0 46 46 46 ff 46 ff ff ff ff e0 ff 46 ff 46 ff ff 46 46 ff 46 ff ff e0 ff 46 ff ff ff ff ff e0 ff ff e0 ff ff e0 ff ff ff e0 46 ff 46 ff 46 ff ff 53 ff ff e0 ff 46 46 ff 46 ff 46 46 ff 46 53 ff ff 46 ff 46 ff 53 ff 46 53 46 ff 46 ff ff ff ff 46 ff ff 46 53 ff ff 46 ff ff ff ff 46 ff ff 46 ff 46 ff e0 46 46 ff 46 ff 46 ff ff e0 46 ff ff e0 ff 53 ff ff ff e0 46 ff ff ff 46 ff ff 46 ff ff e0 ff ff 46 ff ff ff ff ff 46 ff 46 53 ff ff ff 46 53 46 ff ff ff ff 46 ff e0 ff e0 ff 46 46 46 46 ff ff 53 ff ff 53 ff 46 ff ff ff ff ff ff ff 46 ff ff 46 ff ff e0 53 46 ff ff 46 ff ff 53 ff ff ff e0 46 46 ff 53 46 46 ff 46 ff ff 46 46 ff 46 46 ff 46 46 ff 53 46 53 46 ff ff 53 ff ff ff ff ff ff e0 ff e0 46 46 ff 53 ff 46 46 46 46 ff ff ff ff ff 46 ff ff ff 46 ff ff ff 46 53 46 46 ff ff e0 ff ff 46 ff 46 ff ff e0 ff 46 46 ff 46 ff de ff 46 53 46 ff 46 ff ff ff ff 46 53 46 ff 46 ff 46 ff 46 ff ff ff 46 ff 53 ff ff ff 46 53 46 ff ff 46 ff ff ff 53 ff e0 46 46
*/
