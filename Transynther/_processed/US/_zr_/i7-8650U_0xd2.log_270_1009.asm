.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7c97, %r15
add $65431, %rdi
mov (%r15), %r10w
nop
nop
cmp $31635, %r11
lea addresses_A_ht+0x19bef, %r14
nop
nop
add %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x556f, %rsi
lea addresses_normal_ht+0x11c6f, %rdi
nop
xor %r13, %r13
mov $12, %rcx
rep movsl
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0xcaef, %rsi
lea addresses_WC_ht+0x193cf, %rdi
nop
nop
nop
nop
and $35539, %rax
mov $28, %rcx
rep movsl
dec %r13
lea addresses_UC_ht+0x912f, %rax
clflush (%rax)
nop
nop
nop
nop
xor %r15, %r15
movb $0x61, (%rax)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0xf17f, %rsi
nop
nop
and $21916, %rcx
mov (%rsi), %r13d
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x1ee0f, %r15
nop
sub $7761, %rcx
mov (%r15), %r13
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0xbaf5, %rax
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
nop
dec %r15
lea addresses_A_ht+0x12aef, %rsi
lea addresses_WC_ht+0x1aaef, %rdi
nop
and %rax, %rax
mov $24, %rcx
rep movsw
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x17bef, %rsi
cmp %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
add %r14, %r14
lea addresses_UC_ht+0xaaef, %rsi
lea addresses_D_ht+0xb0ef, %rdi
nop
nop
nop
sub $60397, %r13
mov $115, %rcx
rep movsw
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x1ac6f, %r11
nop
nop
sub %rsi, %rsi
movb $0x61, (%r11)
nop
nop
nop
and $37122, %r15
lea addresses_WT_ht+0x1caef, %rsi
lea addresses_WT_ht+0x16eef, %rdi
nop
nop
nop
nop
nop
sub $27971, %r14
mov $35, %rcx
rep movsw
add $3122, %r11
lea addresses_UC_ht+0x182ef, %rax
nop
add $35897, %rdi
mov (%rax), %r14
nop
nop
nop
nop
nop
and $910, %r13
lea addresses_WC_ht+0x1ea6f, %r10
nop
nop
nop
nop
cmp $38409, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
add $41937, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Store
mov $0x301a7a00000002ef, %r11
nop
nop
nop
nop
nop
and %rax, %rax
movl $0x51525354, (%r11)
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_WT+0x182ef, %r8
nop
nop
cmp $31659, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r8)
nop
inc %r8

// Store
lea addresses_WC+0x70af, %r11
clflush (%r11)
dec %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r11)
inc %rdx

// Store
lea addresses_US+0x15f67, %rbp
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
nop
nop
nop
nop
xor $53712, %rbp

// Store
lea addresses_A+0xadb3, %rbx
nop
add $57042, %rbp
movb $0x51, (%rbx)
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_normal+0x842f, %rax
nop
nop
nop
dec %r13
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
nop
xor %r11, %r11

// Store
mov $0x3ceb2a00000007ef, %rdx
sub %r11, %r11
movl $0x51525354, (%rdx)
nop
nop
nop
and $35161, %rax

// Faulty Load
lea addresses_US+0x18aef, %r11
nop
nop
nop
xor %rax, %rax
mov (%r11), %ebx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 270}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
