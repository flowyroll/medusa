.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x10d13, %r13
nop
nop
nop
nop
add %r11, %r11
mov (%r13), %r15w
nop
nop
xor $38807, %rsi
lea addresses_D_ht+0xaa43, %rsi
lea addresses_WT_ht+0xde43, %rdi
nop
nop
dec %r13
mov $102, %rcx
rep movsw
nop
inc %rcx
lea addresses_WC_ht+0x13443, %rsi
lea addresses_normal_ht+0x13b43, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r13, %r13
mov $79, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x2a43, %rsi
lea addresses_WC_ht+0x10243, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r15
mov $6, %rcx
rep movsq
nop
nop
nop
sub $65134, %rsi
lea addresses_normal_ht+0x18683, %r11
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x2843, %rdi
nop
nop
nop
nop
nop
sub $40074, %rcx
movb $0x61, (%rdi)
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x36a7, %rax
nop
nop
nop
xor $29232, %rsi
movb $0x61, (%rax)
nop
nop
nop
cmp $61435, %rdi
lea addresses_normal_ht+0x1d303, %rcx
nop
nop
nop
and %r11, %r11
movb $0x61, (%rcx)
nop
nop
nop
xor $40615, %r13
lea addresses_UC_ht+0x16573, %rsi
lea addresses_WT_ht+0x2ce7, %rdi
nop
nop
add %r10, %r10
mov $127, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_A_ht+0x4c3, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
sub $18675, %r15
lea addresses_A_ht+0x6be3, %rsi
lea addresses_D_ht+0x1d64b, %rdi
nop
nop
nop
add $40846, %rax
mov $108, %rcx
rep movsb
nop
nop
nop
sub $29426, %r11
lea addresses_A_ht+0x14083, %r13
xor $3318, %rax
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
cmp $28236, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_US+0x9043, %rdi
nop
sub %r13, %r13
movb $0x51, (%rdi)
nop
and %rdi, %rdi

// Load
lea addresses_WC+0x206b, %rax
nop
nop
and %r14, %r14
mov (%rax), %r9d
add $58551, %rdi

// Faulty Load
lea addresses_US+0x9043, %r14
nop
cmp %r11, %r11
mov (%r14), %ax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'51': 10252}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
