.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1c37c, %r9
nop
nop
sub $58392, %rdx
mov (%r9), %eax
nop
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x69bc, %rbp
nop
nop
cmp %r10, %r10
mov (%rbp), %ecx
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x1c7f8, %rsi
lea addresses_normal_ht+0x87c, %rdi
nop
nop
nop
and $47609, %r9
mov $14, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x13d7c, %rsi
lea addresses_UC_ht+0x17b61, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $87, %rcx
rep movsw
nop
nop
nop
nop
and $16107, %rsi
lea addresses_A_ht+0x921c, %rsi
lea addresses_D_ht+0xd8bc, %rdi
add %r10, %r10
mov $80, %rcx
rep movsb
nop
cmp $27195, %rdi
lea addresses_WC_ht+0x915c, %rsi
lea addresses_WC_ht+0x10e5c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $16, %rcx
rep movsw
nop
nop
and $51527, %rdx
lea addresses_A_ht+0x10c3c, %rsi
lea addresses_UC_ht+0x1d37c, %rdi
sub $343, %r10
mov $41, %rcx
rep movsl
nop
inc %rbp
lea addresses_UC_ht+0x289c, %rsi
lea addresses_normal_ht+0x37c, %rdi
nop
nop
and %r10, %r10
mov $44, %rcx
rep movsl
nop
xor $20481, %r9
lea addresses_normal_ht+0x13914, %rax
nop
nop
nop
nop
nop
and %r9, %r9
movups (%rax), %xmm5
vpextrq $0, %xmm5, %rcx
xor %rcx, %rcx
lea addresses_UC_ht+0xd494, %rsi
lea addresses_UC_ht+0xe77c, %rdi
nop
and %rbp, %rbp
mov $25, %rcx
rep movsb
nop
cmp $56087, %rsi
lea addresses_A_ht+0x7aa, %rsi
lea addresses_UC_ht+0x1cf7c, %rdi
clflush (%rsi)
xor %r9, %r9
mov $66, %rcx
rep movsq
nop
nop
and $27995, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WT+0x16d7c, %rax
nop
nop
sub $29917, %r9
movb $0x51, (%rax)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x317c, %r12
cmp $26657, %r10
movl $0x51525354, (%r12)
nop
and %rdi, %rdi

// Store
lea addresses_A+0x837c, %r10
cmp $31274, %rbp
mov $0x5152535455565758, %r12
movq %r12, (%r10)
nop
nop
and $23925, %r12

// Store
lea addresses_UC+0xc77c, %r10
nop
nop
nop
nop
and $54859, %rdi
movb $0x51, (%r10)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_WT+0xa37c, %r9
nop
nop
nop
nop
nop
add $25591, %rax
movl $0x51525354, (%r9)
nop
nop
nop
and $18184, %rax

// Store
lea addresses_A+0x3e14, %rdi
nop
nop
dec %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
add $12080, %rax

// Load
lea addresses_US+0xba8c, %r10
nop
nop
cmp %r9, %r9
movb (%r10), %r12b
nop
nop
nop
nop
and $33727, %rbp

// Store
mov $0x600910000000fdc, %r9
clflush (%r9)
nop
dec %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r9)
sub %rdi, %rdi

// Store
lea addresses_US+0x1507c, %r10
and %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r10)
nop
sub $33430, %rax

// Store
lea addresses_US+0x6b7c, %rbp
nop
nop
inc %r12
movw $0x5152, (%rbp)
and $65486, %rdi

// Store
lea addresses_WC+0x26cc, %r10
nop
nop
add %rbp, %rbp
movw $0x5152, (%r10)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_UC+0x858c, %rbp
sub %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
sub %rax, %rax

// Store
mov $0x166e1b0000000c7c, %rcx
nop
dec %rdi
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
sub $38714, %rbp

// Faulty Load
lea addresses_WT+0x77c, %rbp
nop
nop
nop
nop
xor %r10, %r10
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'39': 1272}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
