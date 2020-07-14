.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2f6a, %r8
clflush (%r8)
nop
cmp $19691, %rdi
movb (%r8), %r11b
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0xd58a, %rsi
lea addresses_D_ht+0x10766, %rdi
nop
nop
nop
nop
nop
and $44509, %r8
mov $72, %rcx
rep movsw
nop
inc %r12
lea addresses_D_ht+0x3042, %rcx
nop
nop
nop
nop
nop
and $34726, %rbx
mov (%rcx), %edi
nop
nop
nop
nop
nop
and $7102, %r11
lea addresses_D_ht+0x17c86, %rsi
lea addresses_WT_ht+0x62ca, %rdi
xor $50752, %r9
mov $67, %rcx
rep movsb
nop
nop
nop
add $34857, %rdi
lea addresses_WC_ht+0x538a, %r8
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, (%r8)
nop
and %rcx, %rcx
lea addresses_WT_ht+0x1c86a, %r11
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm2
and $0xffffffffffffffc0, %r11
vmovntdq %ymm2, (%r11)
nop
nop
nop
cmp $13270, %rbx
lea addresses_WT_ht+0x1b98a, %r12
clflush (%r12)
nop
nop
xor $15808, %rsi
mov (%r12), %r8d
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x138a, %rcx
nop
nop
nop
nop
cmp $63736, %rbx
movb $0x61, (%rcx)
nop
nop
dec %r9
lea addresses_normal_ht+0x1abed, %rsi
lea addresses_normal_ht+0xa6e0, %rdi
nop
dec %r9
mov $29, %rcx
rep movsw
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x3d8a, %rsi
lea addresses_A_ht+0xfbca, %rdi
clflush (%rdi)
nop
nop
sub $42950, %r12
mov $121, %rcx
rep movsb
nop
nop
inc %r12
lea addresses_WT_ht+0x1199a, %r12
nop
nop
nop
add $17948, %rsi
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
dec %rbx
lea addresses_WC_ht+0x12fca, %rsi
lea addresses_WT_ht+0x14f8a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r8, %r8
mov $92, %rcx
rep movsl
nop
nop
nop
sub $35733, %rsi
lea addresses_UC_ht+0x1b310, %rsi
lea addresses_normal_ht+0x10072, %rdi
nop
nop
nop
nop
nop
add $54638, %r9
mov $89, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $62869, %r12
lea addresses_normal_ht+0x15be7, %rcx
nop
cmp $59322, %r11
movw $0x6162, (%rcx)
nop
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rsi

// Load
lea addresses_PSE+0x85b2, %r13
nop
xor $13447, %r9
movups (%r13), %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
nop
nop
xor %r13, %r13

// Load
lea addresses_A+0x1dca, %rsi
nop
nop
nop
nop
sub %r13, %r13
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
sub $45497, %r14

// Faulty Load
lea addresses_PSE+0x3d8a, %r9
clflush (%r9)
nop
and $36979, %r13
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
