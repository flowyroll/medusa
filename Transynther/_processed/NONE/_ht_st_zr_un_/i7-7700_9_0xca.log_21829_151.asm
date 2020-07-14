.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x47fc, %rsi
lea addresses_UC_ht+0x1a937, %rdi
nop
nop
nop
nop
nop
and $24184, %rdx
mov $72, %rcx
rep movsb
nop
xor $47643, %r9
lea addresses_UC_ht+0x5037, %r14
nop
nop
nop
nop
nop
inc %rcx
movw $0x6162, (%r14)
sub $46949, %r14
lea addresses_D_ht+0x79b7, %r9
clflush (%r9)
sub $50407, %r14
movups (%r9), %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
nop
nop
add $9907, %rcx
lea addresses_D_ht+0x79b7, %rsi
nop
nop
nop
add $52877, %rcx
movb (%rsi), %dl
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x1b2b7, %rdx
cmp %r10, %r10
movb (%rdx), %cl
nop
nop
nop
nop
xor $40646, %r9
lea addresses_WC_ht+0x99b7, %r10
nop
nop
nop
nop
and $61522, %r14
movups (%r10), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xfbb7, %r9
nop
sub $35837, %rcx
movw $0x6162, (%r9)
nop
add %r9, %r9
lea addresses_WT_ht+0x7ea7, %rsi
lea addresses_UC_ht+0x1a7b7, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $84, %rcx
rep movsb
nop
nop
add $41223, %rdx
lea addresses_UC_ht+0x59b7, %rbp
nop
nop
nop
nop
and $52252, %r10
movups (%rbp), %xmm1
vpextrq $1, %xmm1, %rdi
nop
add $58824, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_PSE+0x12fb7, %r8
nop
nop
and $23172, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r8)
nop
add $61271, %rdx

// Faulty Load
lea addresses_WC+0x131b7, %rbx
nop
nop
nop
nop
nop
and %r13, %r13
movups (%rbx), %xmm2
vpextrq $0, %xmm2, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'98': 2, '8a': 1, '48': 63, '00': 2724, '88': 1, '8e': 3, '80': 2609, '30': 12, 'ff': 7, '90': 2, '46': 2, '82': 5, '10': 16340, '84': 7, '44': 1, '94': 2, '7c': 1, '92': 2, '7e': 3, 'aa': 2, '86': 4, '49': 36}
10 10 10 10 10 10 80 00 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 80 10 00 10 00 10 80 10 10 10 10 10 10 00 10 10 10 10 10 10 00 10 10 00 10 10 80 10 10 10 80 10 10 10 10 10 10 10 10 10 00 10 10 10 00 10 10 10 10 00 10 10 10 80 10 10 10 00 10 10 10 10 10 10 10 80 10 10 10 10 10 10 10 10 49 00 10 80 80 10 10 00 10 10 10 10 10 10 10 10 10 10 49 00 10 10 10 10 80 10 00 10 10 10 80 10 10 10 10 10 10 10 10 00 10 10 10 80 10 10 80 10 10 10 10 10 00 10 10 10 10 10 10 10 10 80 10 10 80 10 10 10 10 10 10 10 10 80 80 00 10 00 10 10 10 10 10 10 10 10 10 00 10 10 10 10 00 10 10 10 10 10 10 10 10 00 10 10 80 10 00 10 00 10 10 80 10 10 10 10 10 10 10 80 10 00 10 80 10 10 80 80 10 10 10 10 10 10 80 10 10 10 10 00 00 10 10 10 10 10 80 10 10 10 00 10 10 00 80 00 10 10 00 10 10 80 10 00 10 10 10 80 10 48 10 10 80 00 10 80 10 00 10 10 10 10 00 10 10 10 00 10 10 00 10 10 10 10 10 10 10 10 10 10 80 10 10 80 00 10 10 10 10 10 10 10 10 10 10 10 80 10 00 80 10 10 10 80 10 80 10 10 10 10 80 10 10 10 10 80 10 80 10 10 10 10 10 10 10 10 84 10 80 00 00 10 10 80 10 10 10 10 10 00 00 10 80 10 10 10 10 10 80 00 80 10 10 10 00 00 10 10 10 10 10 10 00 00 80 10 00 00 10 10 10 10 10 10 00 10 80 10 80 10 10 80 10 10 80 10 10 10 80 10 10 10 10 10 10 80 10 80 10 10 10 10 10 10 10 00 10 10 00 49 00 10 10 10 10 10 10 10 10 10 10 00 10 10 00 00 10 00 10 10 10 00 10 00 10 10 10 00 10 10 10 10 10 10 10 80 00 00 10 10 00 10 10 10 80 10 10 10 10 10 10 10 10 10 10 10 10 10 00 00 10 10 10 10 00 00 10 80 10 80 10 10 00 10 10 80 10 10 10 10 10 10 10 10 80 10 10 00 10 00 10 00 10 10 00 10 10 10 10 80 10 10 10 10 00 10 10 10 00 10 10 10 10 10 00 00 80 10 80 10 10 10 00 10 10 10 10 00 10 80 10 10 10 10 00 10 10 10 10 10 10 10 10 00 10 80 10 80 10 10 10 10 10 10 80 10 10 10 10 10 80 10 00 10 10 10 80 10 80 10 10 80 10 00 00 10 10 00 00 10 80 10 00 10 10 10 80 10 10 10 10 10 10 10 80 10 10 10 00 10 10 80 10 10 10 10 10 10 10 10 10 10 00 10 00 80 10 10 00 00 10 10 10 10 10 10 10 00 10 10 80 10 80 10 00 10 10 10 10 10 10 00 80 10 10 80 10 80 10 10 80 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 00 10 10 80 10 10 10 10 10 80 10 10 00 00 80 10 10 10 80 10 10 80 10 00 10 80 10 10 80 80 10 10 10 10 10 10 00 10 10 80 10 10 10 10 10 10 10 10 80 00 10 10 10 10 80 10 10 80 10 10 10 00 10 10 10 10 00 10 00 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 00 10 10 10 00 10 10 80 10 00 80 10 10 10 10 80 80 00 10 10 00 10 10 10 00 10 10 10 10 00 10 10 00 10 10 10 10 10 00 10 10 10 10 10 10 10 10 10 10 10 10 10 80 00 10 10 10 00 10 10 10 10 00 10 10 10 10 10 10 10 10 10 80 10 10 10 10 10 10 10 10 10 10 10 10 80 10 88 00 10 10 10 00 00 10 80 10 10 10 10 10 80 10 10 10 10 10 10 10 10 10 00 10 10 10 10 10 48 10 10 00 10 10 10 00 10 10 10 80 10 10 00 10 80 10 10 10 10 10 10 00 10 10 00 48 10 10 10 10 10 80 10 10 10 10 00 00 10 00 10 10 00 00 10 80 10 10 10 10 10 80 10 10 80 10 10 10 10 10 80 10 80 10 80 00 10 10 10 10 10 80 10 10 00 10 10 10 10 10 10 10 10 10 10 10 10 10 00 10 00 80 00 10 10 10 10 10 10 80
*/
