.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x321d, %r14
nop
nop
nop
nop
nop
and %r15, %r15
movb $0x61, (%r14)
and $60071, %rcx
lea addresses_D_ht+0x1aff5, %rax
nop
add %r10, %r10
movl $0x61626364, (%rax)
nop
nop
nop
nop
add $49869, %r14
lea addresses_D_ht+0x1281d, %rsi
lea addresses_D_ht+0x1d46d, %rdi
nop
cmp $39571, %r14
mov $110, %rcx
rep movsl
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x1519d, %r10
nop
nop
nop
dec %rax
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x2c9d, %rsi
lea addresses_D_ht+0xdfcd, %rdi
nop
nop
cmp $37544, %r12
mov $21, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_D_ht+0x4cdd, %rsi
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1d61d, %rdi
nop
nop
nop
nop
xor %r15, %r15
movl $0x61626364, (%rdi)
nop
cmp $28008, %rcx
lea addresses_WC_ht+0x1241d, %rdi
nop
add $34036, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
cmp $23568, %rcx
lea addresses_WC_ht+0xaf8c, %r10
cmp %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r10)
add $8115, %rcx
lea addresses_UC_ht+0x1451d, %r14
nop
nop
nop
cmp %rdi, %rdi
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm5
vpextrq $0, %xmm5, %rax
nop
mfence
lea addresses_WC_ht+0x401d, %rdi
nop
nop
nop
cmp %rsi, %rsi
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1e981, %rsi
lea addresses_UC_ht+0x16c49, %rdi
nop
cmp $39138, %r14
mov $36, %rcx
rep movsw
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx

// Store
mov $0xc1d, %r10
nop
nop
nop
nop
xor $31059, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
dec %rcx

// Store
mov $0x6ab20800000001ad, %rcx
nop
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
nop
and $34278, %rcx

// Store
mov $0x406b5000000041d, %rcx
nop
nop
nop
nop
nop
inc %r14
movw $0x5152, (%rcx)
nop
nop
nop
nop
dec %rax

// Store
lea addresses_A+0x10fdd, %r14
nop
nop
nop
nop
nop
sub $12919, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
nop
cmp $832, %r11

// Store
lea addresses_WC+0x12045, %r10
nop
nop
nop
cmp $43709, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
inc %rbp

// Store
lea addresses_normal+0x1e19d, %rax
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
nop
xor $30254, %rcx

// Faulty Load
lea addresses_UC+0x1841d, %r14
nop
nop
nop
nop
nop
add %rbx, %rbx
movups (%r14), %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'46': 14525, '44': 277, '00': 7027}
46 00 46 46 46 46 00 46 00 46 46 46 46 00 46 46 46 46 46 46 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 00 46 46 00 46 46 00 00 46 46 44 00 46 46 46 46 44 46 46 46 00 00 00 46 00 46 46 46 46 00 46 00 46 46 46 00 46 00 46 46 00 00 46 46 46 00 46 00 46 00 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 00 46 46 00 46 46 00 46 46 44 46 00 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 00 00 00 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 00 00 00 46 46 46 00 00 00 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 00 00 00 46 46 46 00 00 00 46 00 46 46 00 46 46 46 46 46 00 00 46 00 46 46 46 46 00 46 46 46 44 46 46 46 00 00 00 46 00 46 00 46 00 00 46 46 00 00 46 46 46 46 00 00 46 46 00 00 00 46 46 44 46 00 46 00 46 00 00 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 00 00 46 00 46 46 46 00 46 46 00 46 00 46 46 46 00 46 44 00 00 00 46 00 46 46 46 46 44 46 46 46 46 46 46 46 00 46 00 46 46 46 00 46 46 00 00 00 46 00 46 00 46 00 00 46 46 46 00 46 46 00 46 46 46 46 00 46 00 46 00 46 46 00 46 46 00 00 46 00 46 46 46 00 00 46 00 46 46 00 46 46 46 46 46 46 46 46 00 00 46 46 46 00 46 46 00 46 46 46 00 00 46 00 46 00 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 44 00 46 00 00 46 00 46 46 46 46 46 46 00 00 00 44 46 00 00 46 46 46 46 00 46 00 00 46 00 46 46 00 46 00 00 46 46 46 00 46 46 46 46 00 00 46 44 00 46 46 46 46 46 46 00 46 00 46 46 00 46 46 46 00 46 46 00 00 46 46 46 00 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 00 44 00 00 00 46 00 00 00 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 00 00 00 46 46 00 46 46 46 46 46 46 46 46 00 46 46 00 46 46 00 00 00 46 46 46 00 46 46 46 46 00 00 46 46 46 46 46 46 00 00 46 00 46 46 46 46 00 46 46 46 46 00 46 46 00 00 00 46 46 46 46 00 00 00 00 46 00 46 00 00 46 00 44 46 00 46 00 00 46 46 00 46 46 46 46 46 46 00 46 00 46 46 46 00 00 00 46 00 46 46 46 46 46 00 46 46 46 00 46 00 46 46 46 46 46 46 00 46 46 00 00 46 46 46 00 46 00 00 46 00 46 46 46 46 00 00 46 46 46 46 46 46 46 00 46 00 00 46 00 00 46 46 46 00 00 46 46 00 00 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 00 46 00 46 00 00 46 00 46 46 46 00 46 46 00 00 00 00 00 46 46 46 00 00 46 00 46 46 46 00 00 46 46 46 00 00 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 00 46 00 00 46 46 44 00 46 00 46 46 46 46 00 00 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 00 46 46 46 46 00 46 46 00 00 00 46 46 46 46 46 46 46 44 46 00 46 00 00 00 46 00 46 46 46 46 46 00 46 00 00 00 46 00 46 46 00 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 44 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 00 46 00 46 00 46 46 46 00 00 46 46 46 46 46 46 46 00 46 46 00 46 46 00 00 00 00 46 46 46 00 46 46 46 46 46 46 46 00 46 00 46 46 00 46 00 46 46 00 46 46 00 00 46 00 00 46 00 00 46 00 46 46
*/
