.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xe693, %rbp
nop
nop
nop
nop
nop
and $51402, %rsi
movw $0x6162, (%rbp)
cmp $29838, %r15
lea addresses_A_ht+0x1193f, %r15
clflush (%r15)
inc %rbp
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
nop
xor $35836, %r15
lea addresses_WC_ht+0x6279, %rcx
nop
nop
nop
add $52157, %r11
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
nop
nop
nop
cmp $22290, %rcx
lea addresses_A_ht+0x2693, %r13
nop
nop
nop
nop
xor $57426, %r8
movl $0x61626364, (%r13)
nop
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0x11b93, %r11
nop
nop
nop
inc %r13
mov (%r11), %ecx
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x18213, %r8
xor %rcx, %rcx
movb $0x61, (%r8)
nop
cmp $64620, %r13
lea addresses_WT_ht+0xb493, %r11
nop
nop
nop
nop
lfence
mov (%r11), %si
nop
nop
nop
nop
nop
cmp $439, %r13
lea addresses_normal_ht+0x3e93, %r13
sub %r11, %r11
movw $0x6162, (%r13)
nop
nop
sub $19620, %rbp
lea addresses_A_ht+0x9fa7, %rsi
lea addresses_A_ht+0xbe93, %rdi
nop
nop
and $27264, %r15
mov $8, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $7681, %r15
lea addresses_D_ht+0x10193, %rcx
nop
sub %r8, %r8
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x2ef5, %rsi
lea addresses_A_ht+0xfbd3, %rdi
nop
nop
nop
cmp $32019, %r11
mov $126, %rcx
rep movsq
and %rdi, %rdi
lea addresses_normal_ht+0xb723, %rsi
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0x1c893, %rsi
lea addresses_UC_ht+0x6693, %rdi
nop
nop
nop
dec %r11
mov $70, %rcx
rep movsb
nop
sub %r8, %r8
lea addresses_normal_ht+0x3a93, %rsi
lea addresses_D_ht+0xe993, %rdi
nop
nop
nop
add $27685, %r15
mov $67, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x1be93, %r13
nop
nop
add $51760, %r12
movw $0x5152, (%r13)
nop
nop
cmp $21196, %rsi

// Store
lea addresses_PSE+0x18a93, %rdi
nop
nop
add $22086, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
nop
nop
sub $31500, %rcx

// Load
lea addresses_PSE+0x19813, %r13
nop
nop
nop
inc %rbp
mov (%r13), %esi
xor %rsi, %rsi

// Store
lea addresses_PSE+0x8e93, %r12
nop
nop
nop
nop
xor $57242, %r9
movb $0x51, (%r12)
nop
nop
nop
nop
nop
add $19899, %r13

// Store
lea addresses_WC+0x1e6b3, %r12
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovaps %ymm6, (%r12)
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_PSE+0x8e93, %rdi
and $28746, %r13
vmovaps (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}}
{'44': 15627, '49': 2, '00': 6200}
00 44 44 00 44 44 00 44 00 00 44 00 44 00 00 44 44 00 44 44 00 44 44 44 44 44 00 00 00 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 00 00 44 00 00 44 00 00 00 44 44 44 44 00 00 44 44 00 44 44 00 44 44 44 44 00 44 00 44 44 44 00 44 00 44 44 44 44 00 44 44 00 44 44 00 00 44 44 00 44 44 44 44 44 44 00 00 44 44 00 00 44 00 44 00 00 00 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 00 44 00 00 44 44 44 00 44 44 44 00 44 44 44 44 00 44 00 00 44 44 00 44 44 44 44 44 44 44 00 44 44 00 00 44 00 44 00 00 44 00 00 00 00 44 44 00 00 00 44 00 44 00 44 00 44 44 00 44 44 00 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 44 00 44 00 44 00 44 44 44 44 44 00 44 00 44 00 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 00 44 00 00 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 00 44 44 00 44 44 44 44 00 44 00 44 44 00 44 00 44 44 00 44 44 44 44 44 00 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 00 44 44 00 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 00 00 00 44 44 44 00 00 44 44 44 44 00 44 44 00 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 00 44 00 00 44 44 44 00 44 44 44 44 44 44 44 44 44 00 00 44 44 00 44 44 44 44 44 00 44 44 00 44 44 00 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 00 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 00 00 44 44 00 44 00 44 44 44 00 00 44 44 00 44 44 44 44 00 44 00 44 44 44 44 44 00 00 00 44 44 44 00 44 00 44 00 44 00 44 44 00 44 00 44 44 44 44 00 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 00 00 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 00 44 00 44 00 44 44 00 44 44 44 44 44 00 00 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 00 00 44 44 00 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 00 44 44 44 00 00 44 44 00 44 00 44 00 00 44 00 44 00 00 44 44 00 00 44 00 44 44 44 00 44 00 44 44 00 00 00 00 44 44 44 00 44 44 00 44 44 44 44 00 00 44 44 44 44 00 44 00 44 44 44 00 44 00 44 00 44 00 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 44 44 44 00 00 44 44 00 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 00 00 00 44 00 44 00 00 00 44 44 44 00 00 44 44 44 44 00 00 44 00 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 00 00 44 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 00 44 00 44 44 44 44 00 44 00 44 44 00 44 44 00 44 44 44 00 00 00 44 44 00 44 44 44 44 44 44 44 44 44 00 44 00 44 00 00 44 44 44 44 44 00 44 00 44 00 44 44 44 00 44 00 44 44 00 44 44 44 44 00 44 00 44 44 44 44 00 00 44 44 44 44 00 00 44 44 00 44 44 44 00 00 44 44 00 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44
*/
