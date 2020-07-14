.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xc51c, %rdx
nop
dec %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm3
and $0xffffffffffffffc0, %rdx
vmovaps %ymm3, (%rdx)
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x1aa20, %rcx
nop
nop
nop
cmp $6508, %r10
movb $0x61, (%rcx)
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1e316, %rsi
lea addresses_A_ht+0xe216, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $74, %rcx
rep movsw
nop
nop
nop
nop
dec %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rsi

// Store
lea addresses_US+0xaa16, %r12
nop
nop
nop
add $47111, %r9
movw $0x5152, (%r12)
nop
nop
add $2875, %r9

// Load
lea addresses_D+0x3096, %r9
sub %r14, %r14
mov (%r9), %r10d
nop
add $23456, %rsi

// Faulty Load
lea addresses_US+0xaa16, %r12
nop
nop
add %rbp, %rbp
mov (%r12), %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'52': 20996, '5f': 833}
52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 5f 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 5f 52 5f 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
