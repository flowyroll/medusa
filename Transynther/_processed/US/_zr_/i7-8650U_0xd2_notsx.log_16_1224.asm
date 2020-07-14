.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf50b, %r13
nop
nop
sub $3335, %r9
movups (%r13), %xmm3
vpextrq $0, %xmm3, %r11
nop
xor $16425, %r15
lea addresses_D_ht+0x920b, %r10
nop
nop
nop
nop
nop
add $41978, %r14
mov $0x6162636465666768, %r13
movq %r13, (%r10)
cmp $18517, %r9
lea addresses_UC_ht+0x230b, %rsi
lea addresses_normal_ht+0x4f5b, %rdi
nop
nop
add $44068, %r11
mov $20, %rcx
rep movsw
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x19324, %rsi
lea addresses_UC_ht+0x1de0b, %rdi
add %r14, %r14
mov $44, %rcx
rep movsb
nop
nop
nop
nop
and $44903, %r13
lea addresses_WT_ht+0x642b, %r15
nop
add $31126, %rcx
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
and %r13, %r13
lea addresses_WC_ht+0x1b98b, %r15
nop
nop
nop
and $22336, %rsi
mov (%r15), %rcx
dec %r9
lea addresses_WT_ht+0x4b2b, %r10
inc %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x170f7, %rdi
clflush (%rdi)
nop
nop
add %r14, %r14
movb (%rdi), %r15b
nop
nop
and $38357, %rdi
lea addresses_normal_ht+0x11b0b, %r14
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm3
and $0xffffffffffffffc0, %r14
movaps %xmm3, (%r14)
nop
nop
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1130b, %r12
nop
nop
nop
sub $22307, %rbp
movl $0x51525354, (%r12)
nop
nop
nop
sub %rbx, %rbx

// Store
mov $0x6d9, %r15
nop
xor $48907, %rdi
movb $0x51, (%r15)
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_US+0xb0b, %rdi
nop
nop
cmp %rsi, %rsi
mov (%rdi), %bp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
