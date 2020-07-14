.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1b9db, %r8
nop
nop
nop
add $12310, %r13
mov $0x6162636465666768, %r15
movq %r15, (%r8)
nop
nop
nop
add $39407, %rdi
lea addresses_WT_ht+0x34f3, %r13
nop
nop
nop
dec %rdx
mov (%r13), %r12w
inc %rdi
lea addresses_D_ht+0x18287, %rsi
lea addresses_normal_ht+0x10fdb, %rdi
dec %r15
mov $22, %rcx
rep movsl
xor %rsi, %rsi
lea addresses_normal_ht+0x1709b, %r8
nop
nop
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
sub $9986, %r12
lea addresses_D_ht+0x5b7b, %rsi
lea addresses_A_ht+0x557f, %rdi
clflush (%rsi)
xor %r8, %r8
mov $22, %rcx
rep movsl
nop
nop
dec %rcx
lea addresses_WC_ht+0x648b, %rdx
nop
nop
nop
mfence
movl $0x61626364, (%rdx)
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x1025b, %r12
nop
nop
nop
nop
nop
dec %rdx
movl $0x61626364, (%r12)
nop
nop
nop
nop
xor $3264, %rcx
lea addresses_A_ht+0x14b4d, %rsi
and $54327, %r13
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x11db, %r13
nop
nop
nop
nop
nop
sub $21904, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0xe23d, %rsi
lea addresses_UC_ht+0x1859b, %rdi
nop
add %r13, %r13
mov $127, %rcx
rep movsl
nop
cmp %r15, %r15
lea addresses_WT_ht+0x13fdb, %rsi
lea addresses_UC_ht+0x1444b, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $113, %rcx
rep movsq
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x139db, %r8
nop
nop
nop
and $5894, %rsi
movw $0x6162, (%r8)
nop
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi

// Load
mov $0x4a4, %r11
clflush (%r11)
nop
add %rcx, %rcx
mov (%r11), %r13
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_A+0x9d3b, %r9
nop
and %rdi, %rdi
movw $0x5152, (%r9)
nop
nop
nop
nop
sub $22036, %rcx

// Store
lea addresses_UC+0x187db, %r9
nop
nop
nop
nop
cmp $36565, %rdi
movw $0x5152, (%r9)
nop
nop
nop
nop
and $42274, %rcx

// Load
lea addresses_D+0x1fad7, %r13
xor %rdi, %rdi
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
cmp $18225, %rdi

// Faulty Load
lea addresses_US+0x1fdb, %r10
nop
nop
nop
add $39794, %r15
mov (%r10), %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'00': 120}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
