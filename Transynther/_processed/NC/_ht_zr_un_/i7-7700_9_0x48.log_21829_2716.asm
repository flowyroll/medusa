.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8c44, %r12
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r12), %rax
nop
nop
cmp $30453, %r11
lea addresses_A_ht+0x7df8, %rax
dec %rdi
movups (%rax), %xmm4
vpextrq $0, %xmm4, %r13
cmp %r11, %r11
lea addresses_WT_ht+0xce3d, %r12
nop
cmp $4392, %r15
movb $0x61, (%r12)
nop
nop
nop
nop
nop
sub $46970, %r12
lea addresses_D_ht+0xb245, %rax
inc %r13
movw $0x6162, (%rax)
sub %rax, %rax
lea addresses_A_ht+0x150f1, %rsi
lea addresses_normal_ht+0x170f1, %rdi
nop
nop
nop
nop
nop
and $15721, %r11
mov $115, %rcx
rep movsw
nop
and $12375, %rcx
lea addresses_D_ht+0xd031, %r11
nop
and $47545, %rcx
movups (%r11), %xmm3
vpextrq $1, %xmm3, %rax
add $4994, %r12
lea addresses_D_ht+0x1b8f1, %rsi
clflush (%rsi)
nop
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%rsi)
cmp $51787, %r13
lea addresses_UC_ht+0x14e71, %rcx
nop
nop
nop
nop
nop
sub $61574, %r13
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add $27548, %r12
lea addresses_A_ht+0xe5f1, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
movw $0x6162, (%rdi)
nop
inc %rsi
lea addresses_A_ht+0xed01, %r15
nop
xor $10756, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm7
and $0xffffffffffffffc0, %r15
movaps %xmm7, (%r15)
sub $51521, %rax
lea addresses_UC_ht+0x182d9, %r15
nop
sub $26058, %r12
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm4
vpextrq $1, %xmm4, %rcx
nop
xor $13008, %r12
lea addresses_WT_ht+0x152b1, %rdi
nop
nop
nop
inc %rsi
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
nop
dec %r11
lea addresses_A_ht+0x123f1, %r12
nop
dec %rsi
vmovups (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
sub $34727, %r15
lea addresses_UC_ht+0x16731, %rsi
lea addresses_WT_ht+0xf751, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $33, %rcx
rep movsl
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_normal+0x14f1, %rbp
cmp $49884, %rax
movb $0x51, (%rbp)
sub %rax, %rax

// Store
lea addresses_RW+0x18c7, %r13
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r13)
nop
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_WC+0x40f1, %rdi
nop
xor %r9, %r9
movb $0x51, (%rdi)
add $28850, %rax

// Store
mov $0x4b535000000008f1, %r13
cmp $44140, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r13)
nop
nop
and %rax, %rax

// Faulty Load
mov $0x4b535000000008f1, %r15
nop
nop
nop
nop
and %rax, %rax
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'08': 2, '47': 4204, 'dd': 1, '45': 10068, '00': 7550, '21': 1, 'bb': 1, 'c0': 1, 'ff': 1}
00 45 00 45 47 45 45 47 00 00 00 47 45 45 45 45 47 45 00 45 45 47 45 00 45 45 47 00 00 47 00 45 45 00 45 47 45 00 00 45 47 45 00 00 00 45 00 45 45 47 45 45 45 47 00 45 45 47 45 45 47 00 45 47 00 47 00 00 47 00 00 45 47 00 00 00 47 00 45 45 00 00 00 00 45 47 45 47 45 45 45 45 45 47 00 00 45 47 00 00 00 00 00 45 47 45 47 45 00 47 45 45 00 45 00 45 47 45 47 00 00 45 45 47 00 47 45 45 45 45 45 47 00 45 45 45 47 00 00 00 45 47 00 45 45 47 00 45 45 47 45 47 00 00 47 00 47 00 00 45 00 00 00 45 45 45 47 45 47 00 00 45 47 45 00 45 45 00 47 c0 45 00 00 00 47 45 47 45 00 45 45 00 45 00 45 45 47 45 45 00 47 45 00 45 00 45 00 00 45 00 45 00 00 45 45 00 00 47 00 45 45 47 45 45 00 45 00 00 00 45 00 45 45 45 45 00 00 45 00 00 00 00 45 00 47 00 45 00 45 00 47 45 45 45 45 45 00 47 45 47 45 45 00 00 45 00 45 45 45 45 00 45 47 45 00 47 45 45 45 45 45 45 45 45 47 45 45 45 47 00 00 00 45 45 47 45 00 45 00 47 45 45 00 00 00 00 45 45 47 00 45 45 45 45 00 47 45 45 47 00 45 45 47 00 45 45 45 00 45 00 47 00 00 00 47 00 45 45 00 45 47 45 45 00 47 00 00 00 45 45 47 45 45 00 00 47 45 00 00 45 47 00 00 47 45 00 00 47 00 45 45 45 47 45 45 47 45 45 00 00 45 45 00 45 00 45 45 47 45 00 45 47 45 47 00 45 45 47 45 00 45 45 00 45 45 00 45 45 45 47 00 00 00 47 00 00 47 45 47 00 00 45 45 47 45 45 45 45 45 00 45 00 00 47 45 00 00 45 00 45 00 45 00 47 45 45 45 45 45 45 00 00 45 47 45 45 45 00 45 47 45 45 47 45 00 00 45 45 45 45 47 00 47 45 45 47 00 00 47 47 00 45 45 00 47 47 45 45 00 47 45 47 00 00 45 47 45 45 00 45 00 45 47 00 47 45 00 00 45 47 45 00 00 47 45 47 45 45 47 45 00 00 45 47 45 45 47 00 45 45 00 45 45 00 00 47 00 47 45 45 47 45 00 45 47 45 45 47 45 47 45 45 00 45 45 47 45 47 00 45 47 45 45 45 47 45 45 45 45 00 45 45 47 45 00 45 45 45 47 45 45 47 45 00 00 00 45 45 00 45 45 45 00 45 47 00 45 00 45 45 45 47 00 00 47 00 45 45 47 00 00 47 45 45 45 45 00 47 00 45 00 45 45 45 00 00 00 45 45 45 47 00 00 00 45 45 47 00 00 45 45 45 00 45 00 45 00 45 00 00 00 45 45 00 00 45 45 45 47 00 47 00 00 47 00 45 45 47 00 00 45 45 00 00 45 45 47 00 00 45 47 45 47 00 00 45 45 45 00 45 47 45 00 00 47 00 45 45 00 00 45 00 00 45 45 00 45 45 45 00 00 47 00 45 45 45 45 47 45 47 45 45 45 00 00 45 47 47 45 47 45 45 45 45 00 47 45 45 47 00 45 47 00 00 45 45 47 00 45 45 00 00 00 00 00 45 00 00 00 45 45 00 45 00 00 00 47 47 47 00 45 45 47 00 45 45 00 00 00 47 00 00 00 47 00 47 00 00 45 00 47 00 47 45 45 45 00 45 47 45 00 00 45 00 45 00 45 00 45 00 00 47 45 47 00 00 45 45 00 45 00 45 00 00 00 00 45 45 47 00 00 45 45 45 45 45 47 45 00 00 00 47 45 00 47 45 00 00 00 45 47 45 45 45 45 45 00 45 00 00 45 47 00 45 00 00 00 45 00 00 47 00 45 45 45 00 00 00 00 45 47 45 00 00 45 47 47 47 00 00 47 00 00 45 45 45 45 47 45 45 00 00 00 00 47 00 45 45 45 47 45 45 45 45 47 45 00 45 00 45 47 45 00 00 45 47 45 00 45 45 45 45 45 00 00 45 47 45 45 45 45 47 45 45 47 45 00 00 47 45 47 00 00 00 00 45 45 45 00 00 45 00 47 45 45 00 45 45 45 45 47 00 00 00 45 45 45 45 00 45 45 00 45 00 45 45 45 45 47 47 45 00 45 45 00 45 00 45 45 45
*/
