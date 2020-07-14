.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18eb0, %rsi
lea addresses_normal_ht+0x4eb0, %rdi
nop
nop
nop
inc %r13
mov $98, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x1eeb0, %r9
nop
nop
nop
cmp %r11, %r11
movl $0x61626364, (%r9)
cmp %rdi, %rdi
lea addresses_D_ht+0x80f0, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
cmp $35116, %r11
lea addresses_normal_ht+0x72d0, %rcx
nop
nop
nop
and $3084, %r11
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
sub $13224, %r11
lea addresses_normal_ht+0x80b0, %rsi
lea addresses_A_ht+0xba30, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $38, %rcx
rep movsl
nop
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0x4bb0, %r9
nop
nop
nop
and $17665, %r14
mov (%r9), %rsi
cmp %rcx, %rcx
lea addresses_normal_ht+0x6858, %rsi
lea addresses_WT_ht+0x1c2b0, %rdi
xor $10158, %r11
mov $0, %rcx
rep movsb
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0xf90, %rsi
lea addresses_UC_ht+0x140b0, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $127, %rcx
rep movsb
nop
nop
nop
nop
cmp $34483, %r14
lea addresses_WT_ht+0x6ab0, %r13
nop
nop
nop
nop
and %r8, %r8
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rdi
cmp $28068, %rcx
lea addresses_normal_ht+0x11c50, %r9
nop
cmp $10681, %rsi
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
nop
add $40343, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rbx
push %rdx

// Store
lea addresses_D+0x6eb0, %r12
clflush (%r12)
xor $31516, %rdx
movb $0x51, (%r12)
nop
nop
nop
dec %rdx

// Load
mov $0xab0, %r11
nop
nop
sub $8796, %r13
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
add $64081, %rdx

// Store
lea addresses_A+0x4a94, %rdx
nop
nop
and %r12, %r12
movb $0x51, (%rdx)
nop
nop
nop
nop
add $12724, %r12

// Store
lea addresses_A+0xaeb0, %r12
nop
nop
nop
nop
and %r10, %r10
movl $0x51525354, (%r12)
add %r13, %r13

// Store
mov $0x700f020000000f7c, %r12
nop
nop
nop
inc %r13
movb $0x51, (%r12)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r10
cmp $5496, %rbx

// Faulty Load
lea addresses_UC+0x1a2b0, %r10
and %rbx, %rbx
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 7, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': True}}
{'08': 57, '72': 50, '44': 15431, '00': 6291}
00 44 00 44 44 00 00 08 44 00 00 44 00 00 00 44 00 00 00 44 44 44 44 44 00 00 00 00 00 44 44 00 00 44 44 44 44 44 00 00 00 00 00 44 44 44 44 00 00 44 44 44 44 44 00 44 00 00 00 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 00 44 44 00 00 00 00 00 44 44 44 00 00 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 08 08 08 08 00 00 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 00 00 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 00 00 44 44 44 00 00 00 00 00 00 08 08 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 00 00 00 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 00 00 00 00 44 44 44 44 00 44 44 00 00 00 00 00 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 00 00 44 44 44 00 44 44 00 00 44 44 44 00 44 00 00 44 44 44 44 44 44 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 00 00 00 44 00 00 00 00 44 44 44 44 44 44 44 44 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 00 00 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 00 44 44 44 44 44 44 00 44 44 00 00 00 00 44 44 00 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 00 44 44 44 44 44 00 00 00 00 44 44 44 44 44 00 00 00 00 44 44 44 00 44 00 00 00 00 00 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 00 44 44 00 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 00 00 00 00 00 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 00 00 00 00 44 44 44 00 00 00 00 44 44 44 44 00 44 44 44 00 00 00 44 44 44 00 00 00 44 44 00 44 00 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 00 00 44 44
*/
