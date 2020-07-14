.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x85bb, %r10
cmp $47485, %rbp
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x1a3e7, %r11
nop
nop
nop
nop
nop
add %rcx, %rcx
movb (%r11), %r8b
and %r10, %r10
lea addresses_WT_ht+0x15587, %rsi
clflush (%rsi)
nop
nop
inc %rdi
movb (%rsi), %cl
sub %rcx, %rcx
lea addresses_A_ht+0x16ee7, %rbp
nop
nop
nop
dec %r8
movw $0x6162, (%rbp)
nop
nop
nop
add $7648, %rbp
lea addresses_WC_ht+0x1aa7, %r10
nop
nop
nop
nop
inc %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %r10
vmovntdq %ymm3, (%r10)
nop
nop
dec %r11
lea addresses_normal_ht+0x3267, %rcx
nop
nop
nop
and %rdi, %rdi
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
nop
cmp $18001, %r8
lea addresses_WT_ht+0x83e7, %rdi
nop
nop
add $28171, %rsi
mov (%rdi), %ecx
nop
nop
nop
xor $58362, %r11
lea addresses_normal_ht+0xd96f, %r11
nop
nop
nop
add $31746, %rbp
movb $0x61, (%r11)
nop
sub %r8, %r8
lea addresses_normal_ht+0x467d, %rsi
lea addresses_UC_ht+0x150e7, %rdi
cmp %r12, %r12
mov $91, %rcx
rep movsl
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0xb15f, %rsi
lea addresses_normal_ht+0x19c37, %rdi
clflush (%rdi)
cmp $43617, %r11
mov $18, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rax

// Store
lea addresses_WT+0x12e67, %r14
nop
nop
nop
mfence
movl $0x51525354, (%r14)

// Exception!!!
nop
nop
mov (0), %r10
nop
nop
nop
and $54983, %r10

// Faulty Load
mov $0x6fa27800000002e7, %r10
sub $55936, %r12
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 7, 'size': 32, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'40': 1, '44': 16}
40 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
