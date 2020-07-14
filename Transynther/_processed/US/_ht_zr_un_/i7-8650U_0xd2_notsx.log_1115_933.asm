.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c779, %r9
nop
nop
nop
nop
nop
xor $55377, %rdi
movups (%r9), %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
nop
nop
cmp $28335, %r9
lea addresses_WC_ht+0xfdf9, %r9
nop
nop
nop
nop
xor $43282, %r11
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0xfe1d, %r13
nop
nop
cmp %rsi, %rsi
movb (%r13), %r10b
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x36d8, %r11
nop
and %r9, %r9
mov (%r11), %si
nop
nop
dec %r9
lea addresses_WT_ht+0x4a79, %r12
nop
inc %r13
movl $0x61626364, (%r12)
nop
nop
nop
nop
sub $37666, %r11
lea addresses_normal_ht+0xa789, %rsi
lea addresses_normal_ht+0x5e79, %rdi
clflush (%rsi)
nop
add %r12, %r12
mov $46, %rcx
rep movsw
nop
nop
nop
xor $61304, %r13
lea addresses_WC_ht+0x19bcc, %rsi
lea addresses_WT_ht+0x1ed59, %rdi
nop
xor %r9, %r9
mov $38, %rcx
rep movsb
nop
nop
dec %r11
lea addresses_WC_ht+0xb9f9, %rsi
lea addresses_UC_ht+0xb4f7, %rdi
nop
xor $16615, %r12
mov $81, %rcx
rep movsb
nop
inc %rcx
lea addresses_A_ht+0x19e79, %rsi
lea addresses_WC_ht+0x63a9, %rdi
nop
sub %r11, %r11
mov $95, %rcx
rep movsw
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x5f9, %rcx
nop
add %r11, %r11
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
and $22504, %r13
lea addresses_A_ht+0x1b6ff, %rsi
lea addresses_A_ht+0x11c41, %rdi
nop
nop
nop
nop
cmp $50708, %r10
mov $97, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x12df9, %rcx
clflush (%rcx)
add %r13, %r13
mov (%rcx), %r9w
nop
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x10969, %r13
nop
nop
nop
nop
nop
and $28802, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r13)
and $52571, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rcx

// Store
lea addresses_D+0x132b9, %rax
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
nop
xor $1996, %r15

// Load
lea addresses_PSE+0xd7f9, %r15
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%r15), %r12b
nop
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_US+0xf5f9, %r8
clflush (%r8)
nop
xor %r15, %r15
movups (%r8), %xmm5
vpextrq $0, %xmm5, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 983, 'f2': 103, '44': 3, '10': 3, '48': 12, '47': 10, '14': 1}
00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 f2 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 f2 f2 f2 44 00 00 00 f2 00 00 00 00 00 00 00 f2 f2 f2 00 00 00 00 f2 00 f2 00 00 00 00 f2 00 00 00 00 00 00 00 00 f2 f2 00 f2 00 00 00 00 00 f2 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 f2 10 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 f2 00 10 00 00 48 f2 00 00 00 00 00 00 48 47 00 00 00 00 f2 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 f2 f2 00 00 00 00 00 f2 00 00 f2 00 47 47 00 47 00 00 00 00 f2 00 47 f2 00 00 f2 00 f2 48 00 00 00 f2 00 f2 00 00 00 10 00 00 f2 00 00 00 00 00 00 00 00 00 f2 00 00 f2 00 00 00 00 00 00 00 00 00 f2 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 f2 00 00 f2 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 14 00 00 00 00 00 00 00 00 00 00 48 f2 00 00 00 00 00 f2 00 f2 00 00 00 00 00 00 f2 00 00 00 f2 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 f2 f2 f2 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 f2 00 00 00 48 00 00 48 00 00 00 00 f2 f2 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 f2 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 f2 00 00 00 00 00 f2 00 00 00 00 00 00 00 f2 00 f2 00 00 00 00 00 00 f2 f2 00 00 00 00 00 f2 00 00 00 47 00 f2 00 00 00 f2 00 f2 00 00 f2 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00
*/
