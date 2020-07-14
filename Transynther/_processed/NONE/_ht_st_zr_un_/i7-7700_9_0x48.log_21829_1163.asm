.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x123eb, %r15
nop
nop
nop
nop
add %rsi, %rsi
mov (%r15), %r11w
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x15a6b, %rsi
lea addresses_WT_ht+0x183fd, %rdi
nop
and $5882, %r15
mov $24, %rcx
rep movsl
nop
nop
sub $36146, %r15
lea addresses_A_ht+0x148eb, %rdi
sub $64533, %rax
mov (%rdi), %r11d
nop
nop
nop
nop
sub $39060, %rdi
lea addresses_A_ht+0xbceb, %r8
clflush (%r8)
nop
nop
nop
nop
sub %r15, %r15
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x1d1eb, %r15
sub %rdi, %rdi
mov (%r15), %eax
xor %rax, %rax
lea addresses_D_ht+0xa1eb, %rsi
lea addresses_WT_ht+0x2d17, %rdi
nop
nop
nop
nop
xor $44239, %r11
mov $24, %rcx
rep movsb
sub %rcx, %rcx
lea addresses_WT_ht+0x3edb, %rax
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r8
movq %r8, (%rax)
nop
sub $48467, %rcx
lea addresses_normal_ht+0x2a6b, %r15
nop
nop
nop
nop
nop
cmp $17225, %rax
mov (%r15), %r8
nop
nop
nop
nop
sub $22640, %rdi
lea addresses_WC_ht+0x118eb, %rsi
lea addresses_A_ht+0x6deb, %rdi
cmp $34705, %r9
mov $37, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rbp

// Faulty Load
lea addresses_A+0x1bdeb, %r8
add %r13, %r13
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'53': 196, 'ff': 12935, '00': 6047, '01': 58, '48': 2198, '46': 369, '45': 26}
ff 00 48 ff 48 ff 00 46 ff ff 00 00 ff ff ff ff ff ff ff 00 ff ff ff ff ff 46 ff ff ff ff 48 00 48 ff ff 00 00 ff ff ff 00 ff 00 ff ff ff ff ff ff ff 00 ff ff 48 00 ff 00 46 00 00 ff 00 00 ff ff ff 00 00 00 00 ff 00 48 00 ff ff 00 ff ff ff ff ff 00 00 00 ff 00 ff 00 ff 00 ff ff ff 00 00 00 00 46 ff ff ff ff 00 00 ff 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff ff 48 00 ff ff 00 ff ff 00 00 00 48 ff ff ff 48 ff ff ff 00 00 46 00 ff ff ff 00 ff 48 ff ff ff ff 00 00 ff ff 00 00 ff ff 00 ff 00 53 00 00 ff 00 ff 48 00 00 ff ff 46 00 ff ff ff ff ff 46 ff 53 ff 00 00 ff ff 00 ff 00 ff ff 53 ff 00 00 00 ff ff ff ff 48 ff ff ff 00 48 00 ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff 00 ff 00 ff ff 00 48 48 ff 00 ff ff 48 ff ff 00 53 ff 48 00 ff ff 00 ff ff ff 46 00 ff 00 ff 00 ff 00 ff 48 48 ff ff ff 48 00 ff ff ff ff ff 46 ff 48 00 ff ff 00 ff ff 00 ff ff 00 00 00 ff ff 46 ff 00 ff 00 ff ff 00 ff ff ff ff ff 00 48 00 ff ff ff ff ff ff 48 00 ff ff 00 ff 48 00 ff ff 48 ff ff 00 00 ff ff 00 ff ff ff 00 ff ff 00 00 ff ff 00 00 48 ff 48 00 ff 48 ff ff ff ff ff ff ff 00 ff ff ff 00 ff 00 ff ff ff 00 ff ff ff ff ff ff 00 ff ff 00 00 ff ff ff ff ff 48 ff 48 ff ff ff 46 00 ff 00 ff ff ff ff 00 ff ff ff ff 48 00 00 ff ff ff 00 00 00 00 ff ff ff ff 00 48 00 48 00 ff ff ff ff 48 53 00 ff ff ff 00 00 00 ff ff ff ff ff ff 00 00 ff ff 00 ff ff 00 48 ff 48 ff 00 ff ff 48 ff ff ff ff ff ff ff 48 ff ff 00 ff 00 00 00 ff ff 48 00 ff ff 48 00 ff ff ff ff ff 53 ff 00 ff ff ff 00 ff ff 00 ff ff ff 00 00 ff 00 ff ff ff 00 ff ff ff ff 00 00 ff 00 ff 00 00 ff 01 00 ff 48 00 ff 46 53 00 ff 00 00 ff 48 ff 00 48 ff ff ff ff ff ff ff ff 48 ff 48 53 00 ff ff ff ff ff 00 ff ff 00 ff ff ff ff ff ff ff 48 00 ff 00 00 ff ff 00 ff ff ff 48 00 ff ff 00 ff 00 00 48 ff ff ff ff ff ff 00 ff ff ff 00 ff ff ff ff ff ff ff ff ff 00 ff ff 46 ff 46 00 ff ff 00 ff 00 00 00 00 00 00 ff ff 46 53 00 ff 00 ff 00 ff 48 00 ff 48 ff 00 ff ff 00 00 ff ff 48 ff 00 ff 00 ff ff ff 00 ff 48 ff 00 00 ff ff ff ff 48 48 00 00 00 ff 00 00 00 00 ff 00 ff ff ff 48 ff ff ff ff 00 00 48 48 ff ff ff ff ff ff 48 ff ff ff 48 00 ff ff 48 00 00 ff ff ff 00 00 48 ff 48 ff 00 ff 48 ff 00 ff ff 48 ff ff 00 ff 53 ff ff 46 ff 00 ff ff ff ff ff ff 00 48 ff ff ff 00 ff ff ff 00 00 00 ff ff 48 00 ff ff 00 ff ff ff ff ff ff ff ff 48 ff ff 48 ff 48 48 53 00 ff 46 53 ff ff ff ff 48 ff ff 00 00 00 ff ff ff 00 00 ff ff ff 00 ff ff 46 ff 00 ff ff 48 00 ff 01 ff 01 ff ff ff 46 00 ff ff ff 00 ff 00 ff ff ff ff 48 ff ff ff 00 00 ff ff 00 00 ff ff 00 ff ff 00 ff ff 00 ff ff ff 53 00 46 ff ff 00 ff ff ff ff 46 ff ff 00 ff ff ff ff ff 00 ff ff 46 00 48 00 ff ff 48 ff ff ff ff 48 ff 00 48 00 ff 00 ff ff ff 00 ff ff ff ff ff 48 ff 00 00 ff 00 00 00 ff 00 ff 48 00 ff ff ff ff ff ff ff ff 00 00 ff 48 00 00 00 ff ff ff ff ff ff ff 00 46 00 ff ff 48 ff 00 00 45 48 00 ff ff ff ff ff ff ff ff 00 ff 00 00 48 ff 00 ff 48 00 ff ff ff ff ff 00 53 ff ff 00 00 ff 48 00 ff ff ff 00 00 ff ff 48 ff ff 00 48 ff ff 00 ff ff ff ff 00 ff ff ff 00
*/
