.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1ca57, %rbp
nop
cmp $5629, %r11
movl $0x61626364, (%rbp)
nop
sub $60636, %r12
lea addresses_A_ht+0x1d285, %rbx
clflush (%rbx)
nop
sub %r12, %r12
movb $0x61, (%rbx)
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x1ef45, %rsi
lea addresses_D_ht+0x18925, %rdi
clflush (%rdi)
nop
sub %r15, %r15
mov $127, %rcx
rep movsb
nop
nop
and $10578, %rbx
lea addresses_A_ht+0xc165, %rbp
add %r15, %r15
movw $0x6162, (%rbp)
nop
nop
nop
nop
cmp $5622, %rbx
lea addresses_WC_ht+0x520d, %rcx
clflush (%rcx)
nop
nop
nop
xor %r12, %r12
movb $0x61, (%rcx)
nop
nop
cmp $32873, %rdi
lea addresses_UC_ht+0x186ed, %rbx
nop
nop
sub $52076, %r15
movb $0x61, (%rbx)
nop
nop
nop
xor $24677, %rsi
lea addresses_normal_ht+0x14b65, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%rdi)
cmp $52841, %rbp
lea addresses_normal_ht+0xa2c5, %rsi
nop
xor %r11, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm6
and $0xffffffffffffffc0, %rsi
movntdq %xmm6, (%rsi)
nop
nop
nop
add $60875, %rbp
lea addresses_UC_ht+0x8925, %rsi
lea addresses_WT_ht+0xc145, %rdi
lfence
mov $117, %rcx
rep movsb
nop
nop
nop
cmp $1487, %r11
lea addresses_D_ht+0x14d45, %rsi
lea addresses_UC_ht+0x4545, %rdi
xor $15192, %r15
mov $102, %rcx
rep movsl
nop
xor %rbp, %rbp
lea addresses_A_ht+0x14945, %r11
nop
nop
nop
nop
nop
add $37334, %r12
movb (%r11), %r15b
and $34680, %rcx
lea addresses_WC_ht+0x14345, %rsi
lea addresses_WT_ht+0x10545, %rdi
nop
nop
sub %rbx, %rbx
mov $63, %rcx
rep movsq
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_normal+0x17bc5, %rsi
nop
nop
nop
xor $41218, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)

// Exception!!!
mov (0), %r12
nop
cmp %rsi, %rsi

// Store
lea addresses_RW+0xdc51, %r15
nop
nop
add $61470, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
dec %rdx

// Load
lea addresses_UC+0x1be45, %rdx
nop
nop
cmp %r15, %r15
mov (%rdx), %r12
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_normal+0x18bd, %rbp
and $19803, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_normal+0xf645, %rdx
nop
nop
nop
nop
nop
cmp $37278, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
nop
xor $15830, %rbp

// Store
mov $0x2689050000000545, %rdx
nop
nop
inc %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%rdx)
nop
nop
inc %rbp

// Faulty Load
lea addresses_A+0x11d45, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and $33301, %rdx
vmovntdqa (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'00': 820, '46': 11}
00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
