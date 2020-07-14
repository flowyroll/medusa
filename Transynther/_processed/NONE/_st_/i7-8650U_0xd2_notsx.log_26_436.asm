.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x12427, %rdi
dec %r11
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
and %r13, %r13
lea addresses_UC_ht+0x18b85, %rbp
and %rcx, %rcx
mov (%rbp), %r13
cmp $48132, %rbp
lea addresses_WC_ht+0x40f5, %rcx
nop
nop
nop
nop
dec %rdx
mov (%rcx), %r8
nop
nop
nop
nop
nop
xor $27100, %rdx
lea addresses_WT_ht+0x14235, %r11
nop
nop
nop
nop
and %rdx, %rdx
movw $0x6162, (%r11)
nop
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x4e75, %r8
dec %rdx
movb (%r8), %cl
nop
nop
nop
nop
nop
add $23644, %rbp
lea addresses_WC_ht+0x1475, %rdx
clflush (%rdx)
nop
dec %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x1e238, %rcx
nop
nop
nop
nop
nop
and %r13, %r13
mov (%rcx), %r11w
nop
nop
nop
nop
nop
and $7944, %rbp
lea addresses_A_ht+0xb825, %rdx
nop
nop
nop
and %r8, %r8
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
sub $34944, %rdi
lea addresses_UC_ht+0x15c35, %rcx
nop
nop
add %rbp, %rbp
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
add $34207, %rcx
lea addresses_WC_ht+0x163f5, %rdx
nop
nop
nop
cmp %rbp, %rbp
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %rcx
sub %rbp, %rbp
lea addresses_WC_ht+0x5719, %rcx
nop
nop
nop
sub %r13, %r13
movl $0x61626364, (%rcx)
nop
add $41151, %rcx
lea addresses_D_ht+0x59f5, %rsi
lea addresses_A_ht+0x1e6c9, %rdi
add $4464, %r8
mov $31, %rcx
rep movsq
nop
nop
dec %r13
lea addresses_UC_ht+0x1de95, %rbp
nop
nop
xor %rsi, %rsi
movb (%rbp), %dl
nop
add $4002, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x17e5d, %rsi
lea addresses_normal+0x18275, %rdi
clflush (%rdi)
nop
add $54392, %r10
mov $100, %rcx
rep movsq

// Exception!!!
nop
mov (0), %rsi
nop
nop
nop
nop
add $25729, %rcx

// Faulty Load
lea addresses_normal+0x18275, %r13
nop
nop
nop
nop
sub $54933, %rax
mov (%r13), %r10d
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'38': 26}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
