.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x13dc9, %r15
nop
nop
cmp %r10, %r10
movb (%r15), %dl
nop
nop
nop
dec %r13
lea addresses_WC_ht+0xd25d, %rsi
lea addresses_D_ht+0x15465, %rdi
nop
xor %r15, %r15
mov $87, %rcx
rep movsl
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x1d8c5, %r13
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
xor $14027, %r15
lea addresses_normal_ht+0x1871, %rsi
nop
cmp %r13, %r13
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
sub $62169, %rsi
lea addresses_A_ht+0x17041, %r10
clflush (%r10)
nop
nop
and $6147, %rdi
mov (%r10), %ecx
nop
inc %r15
lea addresses_D_ht+0x1cb65, %rdx
nop
nop
dec %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
nop
xor %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbx

// Load
mov $0xbe5, %r13
nop
nop
and %r9, %r9
mov (%r13), %r14
nop
nop
inc %rax

// Store
lea addresses_WC+0xda65, %rbx
nop
nop
nop
nop
nop
cmp $60690, %r11
movb $0x51, (%rbx)
nop
nop
nop
nop
and $12898, %r8

// Load
lea addresses_WC+0x1ba61, %r8
xor %r9, %r9
mov (%r8), %ax
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_US+0x7865, %r14
nop
dec %r8
movb (%r14), %r13b
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
