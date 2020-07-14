.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rdi
push %rdx
lea addresses_A_ht+0x16d75, %r12
nop
nop
xor %r14, %r14
movb $0x61, (%r12)
nop
nop
sub $34653, %rdi
lea addresses_WC_ht+0xef1d, %r8
nop
nop
nop
nop
add $50269, %rdx
mov (%r8), %r9d
xor $44514, %r14
lea addresses_A_ht+0x6de3, %r9
cmp $19008, %r8
movups (%r9), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
sub $39462, %r14
lea addresses_WC_ht+0x22dd, %r14
xor $46493, %rdi
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r8
nop
cmp $36692, %rdx
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0x104fd, %r11
clflush (%r11)
nop
nop
cmp $64172, %rdx
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WT+0x38fd, %r8
nop
nop
sub $38853, %rsi
movw $0x5152, (%r8)
nop
nop
nop
dec %rdi

// Store
lea addresses_WT+0x7355, %rcx
nop
nop
sub %r13, %r13
movw $0x5152, (%rcx)
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_WC+0xcfd, %r13
nop
nop
sub $51637, %r11
movb (%r13), %dl
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
