.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xcc0c, %rsi
lea addresses_WT_ht+0x8c10, %rdi
clflush (%rsi)
xor $26364, %rbx
mov $50, %rcx
rep movsl
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x3acc, %r9
nop
add $19020, %rbx
movb (%r9), %cl
nop
nop
inc %rcx
lea addresses_normal_ht+0x1c1fc, %rsi
lea addresses_WT_ht+0x10c4c, %rdi
nop
xor %rbp, %rbp
mov $74, %rcx
rep movsq
add %rbx, %rbx
lea addresses_WC_ht+0x19ac, %rdi
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %rdi
vmovaps %ymm3, (%rdi)
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x1744c, %rsi
nop
nop
nop
nop
add %r8, %r8
mov (%rsi), %bx
nop
nop
nop
nop
nop
and $37016, %r9
lea addresses_A_ht+0xbc84, %rbp
clflush (%rbp)
nop
add %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %rbp
movntdq %xmm6, (%rbp)
nop
nop
nop
nop
cmp $46077, %rcx
lea addresses_UC_ht+0x1194c, %rbx
nop
nop
nop
nop
nop
and %rsi, %rsi
movb (%rbx), %r8b
sub $10475, %rbx
lea addresses_normal_ht+0x167cc, %rsi
lea addresses_WT_ht+0x155cc, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r15, %r15
mov $24, %rcx
rep movsw
nop
xor %r9, %r9
lea addresses_WT_ht+0x980c, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
inc %r15
mov (%rbx), %ebp
nop
nop
and %r9, %r9
lea addresses_A_ht+0x110cc, %rsi
lea addresses_UC_ht+0x1e6fc, %rdi
inc %rbp
mov $63, %rcx
rep movsq
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x1df4c, %r15
nop
nop
nop
add %rsi, %rsi
mov (%r15), %bx
nop
nop
nop
cmp $8774, %rbp
lea addresses_WT_ht+0xf44c, %rbp
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%rbp)
nop
cmp %r8, %r8
lea addresses_WT_ht+0x1132c, %rsi
nop
nop
nop
nop
nop
add $16264, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm3
and $0xffffffffffffffc0, %rsi
vmovaps %ymm3, (%rsi)
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x19de8, %r8
nop
nop
dec %r13
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
cmp $56261, %rbp

// Store
lea addresses_normal+0xd64c, %rdi
nop
dec %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
and $17753, %r13

// Store
lea addresses_PSE+0x11e4c, %rax
nop
nop
nop
and $28384, %r13
movb $0x51, (%rax)
nop
nop
mfence

// Store
lea addresses_normal+0x6a4c, %rbx
nop
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rbx)
nop
xor %rbp, %rbp

// REPMOV
lea addresses_A+0x1844c, %rsi
lea addresses_D+0x324c, %rdi
nop
nop
nop
nop
nop
xor $9523, %rax
mov $82, %rcx
rep movsl
nop
and %rax, %rax

// Store
lea addresses_RW+0x137cc, %r15
cmp %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r15)
nop
sub %rdi, %rdi

// Store
mov $0x1a59be0000000f4c, %rax
nop
nop
sub %rbp, %rbp
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
sub $55640, %rbp

// Faulty Load
lea addresses_normal+0x4c4c, %r15
nop
nop
and %rbx, %rbx
movaps (%r15), %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_A', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'35': 21738, '44': 3, '45': 83, '00': 5}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 45 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
