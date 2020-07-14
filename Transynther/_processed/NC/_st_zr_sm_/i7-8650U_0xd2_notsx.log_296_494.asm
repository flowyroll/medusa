.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd1cf, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp %r13, %r13
movw $0x6162, (%r9)
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x984f, %rsi
lea addresses_WC_ht+0x1892f, %rdi
sub %r13, %r13
mov $125, %rcx
rep movsl
dec %r9
lea addresses_normal_ht+0x65ef, %rsi
lea addresses_D_ht+0x632b, %rdi
nop
nop
nop
nop
cmp $11052, %r14
mov $47, %rcx
rep movsl
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xd84f, %r13
nop
nop
nop
sub $50151, %r9
movw $0x6162, (%r13)
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xaa4f, %rsi
lea addresses_A_ht+0x10b4f, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $3, %rcx
rep movsq
nop
nop
nop
nop
nop
add $6323, %rcx
lea addresses_WT_ht+0xed4f, %r14
and $58574, %rax
mov (%r14), %r9w
nop
nop
nop
nop
nop
dec %r9
lea addresses_WT_ht+0x1a42f, %r14
nop
nop
nop
nop
nop
cmp $37957, %rsi
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm4
vpextrq $1, %xmm4, %rax
sub %rsi, %rsi
lea addresses_WT_ht+0x894f, %rsi
lea addresses_WT_ht+0x1d287, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $42, %rcx
rep movsq
nop
cmp $37124, %rsi
lea addresses_WC_ht+0x18dcf, %rsi
lea addresses_WT_ht+0x4d63, %rdi
nop
nop
nop
dec %r15
mov $62, %rcx
rep movsq
nop
nop
nop
nop
xor $40510, %r9
lea addresses_UC_ht+0x19a4f, %rcx
nop
nop
nop
nop
xor %r14, %r14
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
and $10550, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_WC+0x1dd0f, %r11
nop
nop
nop
nop
cmp %r12, %r12
movb $0x51, (%r11)
nop
nop
sub $20800, %rdi

// Store
lea addresses_normal+0x15c16, %r8
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%r8)
nop
cmp %r9, %r9

// Load
lea addresses_normal+0x1144f, %r12
nop
add $4651, %rdi
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
nop
inc %r11

// Store
mov $0x46acb000000044f, %rax
clflush (%rax)
nop
sub $21449, %r10
movw $0x5152, (%rax)
nop
and %r8, %r8

// Store
mov $0xb4f, %rdi
nop
sub %r10, %r10
movw $0x5152, (%rdi)
sub $43257, %r9

// Faulty Load
mov $0x46acb000000044f, %r12
xor %r8, %r8
mov (%r12), %ax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'52': 284, '00': 12}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52
*/
