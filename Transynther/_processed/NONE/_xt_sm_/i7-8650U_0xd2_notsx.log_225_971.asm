.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x711, %r8
nop
dec %r15
mov (%r8), %r10d
nop
nop
nop
nop
nop
xor $56545, %rax
lea addresses_A_ht+0x11171, %rcx
xor $53210, %r12
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
add $43169, %rcx
lea addresses_WC_ht+0xac49, %rsi
lea addresses_A_ht+0x7dc9, %rdi
nop
nop
nop
sub %rax, %rax
mov $28, %rcx
rep movsw
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x12399, %rsi
lea addresses_WC_ht+0x1d246, %rdi
nop
nop
nop
nop
sub $52884, %rax
mov $16, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $37037, %rcx
lea addresses_A_ht+0x3f11, %r12
add %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r12)
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x6c71, %r10
clflush (%r10)
nop
nop
nop
nop
nop
lfence
movl $0x61626364, (%r10)
nop
nop
add $20354, %rdi
lea addresses_WC_ht+0x372b, %rsi
lea addresses_D_ht+0xa6ac, %rdi
clflush (%rsi)
clflush (%rdi)
dec %r12
mov $57, %rcx
rep movsq
nop
nop
dec %r10
lea addresses_WT_ht+0xd511, %r15
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%r15)
nop
inc %rax
lea addresses_WT_ht+0x1d911, %rdi
cmp $64318, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm0
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm0, (%rdi)
nop
nop
nop
xor $2452, %rcx
lea addresses_WT_ht+0x18e05, %r8
clflush (%r8)
nop
nop
nop
sub %r15, %r15
movb $0x61, (%r8)
nop
nop
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
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
push %rcx

// Load
mov $0xbd1, %r8
nop
nop
nop
nop
cmp $11776, %r9
mov (%r8), %r10d
nop
nop
nop
nop
dec %r9

// Store
lea addresses_D+0x711, %r10
add %r12, %r12
movw $0x5152, (%r10)
nop
xor $40306, %r14

// Store
lea addresses_A+0xf1fb, %r12
nop
nop
add $6792, %rax
movb $0x51, (%r12)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Load
lea addresses_UC+0x2511, %rax
nop
nop
nop
add %r9, %r9
mov (%rax), %r10w
nop
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_UC+0x111b1, %rcx
nop
nop
xor $19638, %r9
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_D+0x17a31, %r9
clflush (%r9)
sub $11232, %rax
movw $0x5152, (%r9)
cmp $10561, %r14

// Faulty Load
lea addresses_D+0x711, %rax
nop
nop
nop
nop
nop
add $36835, %r10
movb (%rax), %cl
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rcx
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
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'52': 225}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
