.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7fac, %rcx
nop
nop
nop
nop
add $19113, %rax
movb $0x61, (%rcx)
nop
inc %r10
lea addresses_A_ht+0x1885c, %rsi
lea addresses_UC_ht+0xc60c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r15
mov $84, %rcx
rep movsb
add $25621, %rax
lea addresses_A_ht+0x82ec, %rsi
lea addresses_normal_ht+0x1cde1, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $27, %rcx
rep movsw
nop
nop
add $18725, %rcx
lea addresses_normal_ht+0x1d06c, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor %rax, %rax
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
cmp $16806, %rsi
lea addresses_normal_ht+0x10fdc, %r12
nop
xor %rsi, %rsi
movw $0x6162, (%r12)
nop
nop
nop
and $46264, %rax
lea addresses_normal_ht+0xe9dc, %rsi
nop
nop
nop
cmp $5710, %rax
mov (%rsi), %r12w
dec %rax
lea addresses_D_ht+0x14394, %r9
nop
nop
nop
nop
sub $16542, %r12
mov (%r9), %ax
nop
cmp %r9, %r9
lea addresses_WT_ht+0xda3c, %rcx
nop
nop
nop
nop
add $27605, %r9
mov (%rcx), %si
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx

// Load
lea addresses_normal+0x1e6e4, %r9
nop
nop
nop
nop
cmp %r11, %r11
mov (%r9), %rcx
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_US+0x159dc, %r12
nop
nop
nop
and $35941, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_UC+0x17dc, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rcx)
inc %rdx

// Load
lea addresses_UC+0x196c4, %r11
and $7492, %r12
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_US+0x159dc, %r11
nop
nop
nop
nop
and $29458, %rdx
movw $0x5152, (%r11)
nop
nop
nop
nop
cmp $52304, %r10

// Faulty Load
lea addresses_US+0x159dc, %rcx
nop
nop
nop
inc %r11
mov (%rcx), %r9w
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'52': 36}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
