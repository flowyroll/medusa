.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xf851, %r12
nop
nop
sub %rbp, %rbp
movups (%r12), %xmm3
vpextrq $0, %xmm3, %rbx
xor %rdi, %rdi
lea addresses_A_ht+0x17b1, %rbx
cmp $23235, %r12
mov (%rbx), %r8
and %rbp, %rbp
lea addresses_WC_ht+0xca91, %rsi
lea addresses_normal_ht+0x12e11, %rdi
nop
nop
nop
and $54796, %r9
mov $91, %rcx
rep movsb
nop
nop
and %r12, %r12
lea addresses_A_ht+0x9e91, %rsi
lea addresses_D_ht+0x10f11, %rdi
nop
nop
nop
add $60291, %r9
mov $5, %rcx
rep movsq
nop
nop
cmp $26842, %rsi
lea addresses_WC_ht+0x12f91, %rsi
lea addresses_D_ht+0x1d231, %rdi
clflush (%rsi)
nop
nop
nop
dec %r8
mov $120, %rcx
rep movsw
cmp $20530, %rcx
lea addresses_UC_ht+0x8911, %rsi
lea addresses_D_ht+0x1a691, %rdi
nop
nop
nop
and %rbx, %rbx
mov $36, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x165d1, %rsi
lea addresses_D_ht+0x1e191, %rdi
nop
xor %rbp, %rbp
mov $39, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0xae91, %rsi
lea addresses_UC_ht+0x1a6d1, %rdi
nop
sub $61530, %r9
mov $26, %rcx
rep movsb
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x5909, %rbp
clflush (%rbp)
nop
nop
nop
xor $49417, %r8
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm1
vpextrq $1, %xmm1, %r9
cmp $33299, %rcx
lea addresses_WT_ht+0xc8f1, %rsi
lea addresses_A_ht+0x1891, %rdi
nop
nop
sub %r9, %r9
mov $22, %rcx
rep movsb
cmp $26566, %rsi
lea addresses_UC_ht+0x12e71, %rsi
lea addresses_D_ht+0x7091, %rdi
nop
and $9879, %r9
mov $111, %rcx
rep movsl
nop
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x18691, %rcx
nop
cmp $25914, %rdi
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm3
vpextrq $0, %xmm3, %rbp
sub $29015, %rbx
lea addresses_A_ht+0x2031, %rsi
lea addresses_D_ht+0x9fb1, %rdi
sub %rbx, %rbx
mov $1, %rcx
rep movsq
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rsi

// Store
mov $0x52a3380000000c71, %r14
nop
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r9
movq %r9, (%r14)
nop
and %rbp, %rbp

// Faulty Load
lea addresses_normal+0xde91, %r10
nop
nop
nop
nop
xor %r14, %r14
mov (%r10), %si
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
