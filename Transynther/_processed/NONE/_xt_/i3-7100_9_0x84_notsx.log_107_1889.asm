.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x8daf, %r14
clflush (%r14)
nop
nop
nop
nop
nop
dec %r15
mov (%r14), %cx
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x6def, %rsi
lea addresses_WC_ht+0x16aaf, %rdi
nop
inc %rdx
mov $126, %rcx
rep movsb
nop
nop
nop
nop
add $18007, %r15
lea addresses_WC_ht+0x274f, %rsi
lea addresses_UC_ht+0x86cf, %rdi
clflush (%rsi)
cmp $65124, %r10
mov $120, %rcx
rep movsb
nop
nop
nop
nop
nop
and $15042, %r14
lea addresses_D_ht+0x1172f, %rsi
lea addresses_D_ht+0x19a5f, %rdi
nop
xor $59920, %r15
mov $79, %rcx
rep movsq
cmp $10587, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rsi

// Store
mov $0x5612c40000000c4f, %r15
clflush (%r15)
nop
nop
nop
cmp $37129, %r10
movw $0x5152, (%r15)
nop
and %rax, %rax

// Faulty Load
lea addresses_WT+0x3f4f, %r10
nop
cmp $3650, %r13
mov (%r10), %si
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'39': 107}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
