.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x192ae, %rbp
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r12
movq %r12, (%rbp)
nop
nop
nop
sub %r9, %r9
lea addresses_A_ht+0xb12e, %rsi
lea addresses_D_ht+0x198ae, %rdi
clflush (%rdi)
nop
add %r10, %r10
mov $100, %rcx
rep movsq
nop
nop
nop
nop
xor $3605, %r9
lea addresses_normal_ht+0x9bfe, %rsi
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x1e27e, %r12
clflush (%r12)
nop
nop
nop
xor $34940, %r9
movb $0x61, (%r12)
inc %r12
lea addresses_WT_ht+0x9282, %rcx
nop
nop
nop
nop
nop
inc %rbp
mov (%rcx), %r12
nop
nop
nop
and $22485, %rsi
lea addresses_D_ht+0x5cbe, %rsi
lea addresses_normal_ht+0x1d52e, %rdi
dec %r9
mov $67, %rcx
rep movsw
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x92e, %rsi
lea addresses_D_ht+0x12a6e, %rdi
and $24631, %r10
mov $53, %rcx
rep movsl
nop
nop
nop
cmp $53333, %rbp
lea addresses_WC_ht+0x11cae, %rcx
clflush (%rcx)
nop
nop
xor $48482, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
cmp %rsi, %rsi
lea addresses_normal_ht+0xac0e, %rcx
nop
nop
nop
nop
add %r9, %r9
mov (%rcx), %si
nop
nop
nop
nop
sub $6345, %rcx
lea addresses_UC_ht+0x19290, %rcx
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x1189e, %rsi
lea addresses_D_ht+0x103b2, %rdi
nop
nop
nop
nop
xor $10096, %r12
mov $68, %rcx
rep movsb
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x12d2e, %rsi
lea addresses_UC_ht+0x1f8e, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $82, %rcx
rep movsl
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x3d2e, %rsi
lea addresses_normal_ht+0x1e74e, %rdi
and $977, %r13
mov $13, %rcx
rep movsw
nop
nop
cmp $32751, %rsi
lea addresses_UC_ht+0xd92e, %r9
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r10
movq %r10, (%r9)
nop
dec %rsi
lea addresses_normal_ht+0xa9ee, %rsi
lea addresses_normal_ht+0xc12e, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $64, %rcx
rep movsw
nop
add $22059, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x12c9a, %rsi
lea addresses_UC+0xf0ae, %rdi
nop
add %r9, %r9
mov $84, %rcx
rep movsq
nop
dec %rdx

// REPMOV
lea addresses_A+0x18fc2, %rsi
lea addresses_WC+0x16d0e, %rdi
nop
add %r8, %r8
mov $81, %rcx
rep movsq
nop
cmp $49744, %rdx

// Store
mov $0x92e, %rsi
nop
nop
and $34752, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
cmp %r9, %r9

// Faulty Load
mov $0x180f04000000092e, %r8
nop
nop
and %rdx, %rdx
mov (%r8), %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'39': 3560, '58': 13894, '35': 1424, '00': 2951}
39 39 58 58 35 58 58 58 00 39 58 35 58 39 58 58 58 00 39 58 58 58 58 39 58 39 58 39 00 39 58 58 00 58 58 58 39 58 35 58 39 58 35 58 58 39 58 35 39 58 58 39 58 58 00 58 58 39 58 58 35 58 39 58 58 35 58 58 58 58 39 58 58 58 58 58 35 35 58 58 58 58 58 58 35 58 39 58 58 58 58 58 35 58 58 58 58 58 58 58 39 58 58 58 58 58 39 58 58 00 58 58 58 58 00 00 58 58 35 58 58 58 00 58 39 58 00 39 39 35 58 58 58 58 58 58 00 39 39 39 35 58 35 39 58 58 35 58 58 39 58 58 58 58 35 39 58 58 35 35 58 58 58 39 58 58 58 39 58 39 58 58 58 58 58 58 35 00 39 58 00 58 39 39 35 00 58 39 39 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 39 39 58 58 39 39 39 39 58 58 58 39 35 58 58 58 58 00 58 00 58 39 58 00 58 58 58 58 58 58 58 35 58 39 58 00 35 58 00 39 58 58 58 58 58 58 58 58 58 35 58 58 58 39 58 58 39 00 58 58 00 35 58 00 39 58 58 58 58 58 58 00 39 35 58 39 39 58 35 58 58 39 39 58 58 58 58 58 58 39 58 58 58 00 58 58 39 00 58 58 00 58 58 58 39 00 35 58 58 58 58 58 00 00 58 00 58 58 35 00 58 58 35 58 58 58 58 58 00 58 35 58 39 39 58 58 00 35 00 58 39 00 58 58 35 58 58 58 00 39 39 58 39 58 58 00 58 39 39 58 39 58 39 39 00 58 58 58 58 58 58 35 58 58 58 39 00 00 39 39 39 58 39 58 58 58 58 58 39 39 58 58 58 58 58 58 58 58 00 58 58 00 39 39 39 58 58 58 58 39 58 58 39 58 39 58 58 58 58 39 39 58 39 58 35 58 58 58 58 58 39 58 58 00 58 58 58 58 58 39 58 00 39 58 58 39 58 00 35 58 58 58 00 58 58 58 35 58 58 58 58 00 39 39 58 00 58 58 39 39 58 00 58 58 39 35 00 58 00 58 58 35 39 58 58 58 58 58 58 35 00 39 35 58 58 58 58 58 58 58 00 58 58 58 58 39 58 58 58 58 58 39 58 58 00 35 58 00 58 58 58 00 58 58 00 00 39 58 58 58 58 39 58 58 58 00 58 58 58 58 58 58 35 58 58 58 39 00 58 58 00 00 58 39 58 58 58 35 00 58 00 58 58 39 58 58 58 00 39 58 58 35 58 58 58 39 58 58 00 58 58 58 00 58 58 00 39 58 58 58 58 58 39 58 58 58 00 00 58 00 39 58 58 58 58 58 58 58 58 58 58 58 58 58 39 39 58 39 00 00 58 58 39 58 39 39 00 39 58 58 00 58 00 58 58 58 00 58 39 58 58 39 39 58 58 00 58 58 58 00 39 35 00 58 58 39 58 58 58 39 58 58 39 58 58 39 58 00 39 58 58 39 58 00 35 58 58 00 58 58 58 39 58 39 39 58 00 58 58 58 58 58 58 58 58 39 58 00 58 58 58 00 00 58 58 39 39 58 58 00 39 00 58 00 58 58 39 39 58 58 58 00 35 58 39 35 58 00 58 58 39 58 58 00 58 58 39 58 58 00 00 58 58 58 58 39 58 00 39 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 00 00 39 58 58 35 58 58 58 35 58 58 58 58 35 58 58 58 00 58 39 58 00 58 58 35 58 35 58 58 58 39 39 58 58 58 58 39 39 58 58 58 00 58 58 39 58 58 00 39 58 58 00 00 58 58 58 35 58 00 58 58 58 39 58 58 58 39 39 58 58 58 39 58 58 58 58 58 58 58 58 58 58 58 39 58 58 35 58 00 58 39 35 58 58 58 58 35 58 58 58 35 58 00 58 00 58 58 00 39 58 39 58 58 39 39 58 58 58 58 39 58 58 00 39 58 00 00 58 58 35 58 58 58 58 58 58 58 58 58 58 00 39 39 39 35 58 58 58 39 00 39 39 00 58 58 58 35 58 58 58 39 00 58 00 58 58 58 58 00 58 58 58 39 58 39 58 58 58 58 39 58 58 58 00 58 58 58 39 58 58 58 58 39 39 39 58 00 58 58 00 58 39 39 58 00 58 00 58 58 58 00 58 58 00 58 00 58 00 39 39 58 00 58 58 00 58 58 58 00 58
*/
