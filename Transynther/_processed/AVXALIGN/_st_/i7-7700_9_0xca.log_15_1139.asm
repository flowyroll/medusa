.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1d128, %r8
nop
nop
nop
inc %rsi
movb (%r8), %r9b
nop
nop
nop
and $4740, %r13
lea addresses_WT_ht+0x4d6c, %rdi
clflush (%rdi)
nop
nop
add %r11, %r11
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rcx
nop
inc %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x1516c, %r10
clflush (%r10)
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r10)
nop
xor $57001, %rcx

// Load
lea addresses_WC+0x25c4, %r15
clflush (%r15)
xor %r13, %r13
vmovaps (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
cmp $45396, %rcx

// Store
lea addresses_US+0x19d6c, %rdx
clflush (%rdx)
nop
inc %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovntdq %ymm6, (%rdx)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_RW+0xc83c, %r10
sub %r15, %r15
movb $0x51, (%r10)
and %rdx, %rdx

// Faulty Load
lea addresses_PSE+0x1236c, %rdx
nop
add $61195, %rcx
mov (%rdx), %di
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'33': 15}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
