.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x4478, %rax
clflush (%rax)
nop
nop
add $4967, %r12
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
sub $49849, %r15
lea addresses_A_ht+0xd2e8, %r10
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r10)
nop
nop
xor $64790, %r15
lea addresses_D_ht+0x8ca8, %r10
nop
nop
nop
nop
cmp $30650, %rsi
movups (%r10), %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
add $27521, %r12
lea addresses_WC_ht+0x18c76, %r12
nop
xor %r13, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm4
and $0xffffffffffffffc0, %r12
movntdq %xmm4, (%r12)
nop
nop
nop
lfence
lea addresses_A_ht+0x184a8, %r12
clflush (%r12)
sub $65223, %r10
mov (%r12), %r11w
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x9628, %rax
nop
nop
nop
add %r10, %r10
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
cmp %r10, %r10
lea addresses_A_ht+0x136a8, %r12
nop
nop
nop
cmp $51733, %rax
mov (%r12), %esi
sub %r13, %r13
lea addresses_UC_ht+0x18348, %r11
sub $24321, %r10
movb (%r11), %al
nop
nop
nop
nop
sub $45192, %rax
lea addresses_WC_ht+0x17aa8, %rsi
lea addresses_normal_ht+0x19a68, %rdi
sub %rax, %rax
mov $33, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0xe4a8, %rsi
lea addresses_UC_ht+0xcf68, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $1, %rcx
rep movsl
nop
dec %rdi
lea addresses_UC_ht+0xb1b0, %rsi
lea addresses_normal_ht+0xd154, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $51, %rcx
rep movsq
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x5a20, %rdi
nop
nop
nop
nop
nop
cmp $1220, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %rdi
vmovaps %ymm4, (%rdi)
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x17ce8, %rsi
lea addresses_WC_ht+0x100a8, %rdi
nop
dec %r15
mov $51, %rcx
rep movsl
sub %r10, %r10
lea addresses_D_ht+0x48a8, %rcx
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%rcx)
nop
nop
nop
and $32357, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rbp

// Store
mov $0x6bc, %r11
nop
nop
cmp $5610, %r14
movb $0x51, (%r11)
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_UC+0x15ca8, %rbp
nop
inc %r15
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 3, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': True, 'NT': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
