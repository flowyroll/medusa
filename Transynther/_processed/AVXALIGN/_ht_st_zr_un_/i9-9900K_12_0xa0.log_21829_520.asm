.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x12898, %rbx
nop
xor $6800, %r11
mov $0x6162636465666768, %r8
movq %r8, (%rbx)
nop
and $6181, %r13
lea addresses_WT_ht+0x1cde8, %rdx
cmp %r9, %r9
movb (%rdx), %r10b
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x51d8, %r13
nop
nop
nop
inc %r9
mov (%r13), %dx
and %r10, %r10
lea addresses_WC_ht+0xd58, %r9
and $40338, %r11
mov (%r9), %edx
inc %r10
lea addresses_D_ht+0x17898, %r13
nop
cmp %rdx, %rdx
movb $0x61, (%r13)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x10e98, %r9
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r10
movq %r10, (%r9)
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1081, %r11
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r11)
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x1d298, %rdx
nop
cmp $20979, %r9
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x1698, %rbx
xor %r10, %r10
movl $0x61626364, (%rbx)
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x1d298, %r9
clflush (%r9)
nop
nop
nop
inc %rdx
movl $0x61626364, (%r9)
cmp %r10, %r10
lea addresses_WC_ht+0x14f88, %rsi
lea addresses_D_ht+0x3798, %rdi
nop
and $9529, %r10
mov $122, %rcx
rep movsw
nop
dec %rcx
lea addresses_WC_ht+0x65a8, %rsi
nop
nop
nop
sub %rdx, %rdx
movb (%rsi), %cl
nop
sub %r11, %r11
lea addresses_D_ht+0x3a98, %rcx
clflush (%rcx)
nop
xor $39454, %rdx
movb $0x61, (%rcx)
nop
nop
nop
nop
sub $15937, %rdx
lea addresses_UC_ht+0x19f98, %r8
nop
and %rdi, %rdi
mov (%r8), %r11d
nop
nop
nop
nop
nop
and $23801, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi

// Store
lea addresses_PSE+0x6bd2, %r13
add %r12, %r12
movw $0x5152, (%r13)
nop
nop
sub $36667, %rdi

// Store
lea addresses_US+0x2a98, %r13
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_UC+0xea9a, %r12
nop
nop
nop
sub $4527, %r8
movw $0x5152, (%r12)
nop
nop
nop
nop
add $55202, %r13

// Store
mov $0x3e0, %r13
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r13)
cmp %r14, %r14

// Faulty Load
lea addresses_UC+0xca98, %r8
nop
nop
nop
inc %r12
mov (%r8), %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8}}
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'02': 1, '13': 1, '0a': 3, '0f': 1, '3b': 1, '17': 2, '0b': 7, '06': 13, '48': 1112, '20': 3, 'ff': 506, '00': 19768, '23': 1, '15': 83, '33': 1, '2e': 2, '2b': 1, '14': 1, '18': 115, '19': 46, '26': 3, '29': 1, '34': 1, '2c': 1, '39': 1, '1b': 1, '0d': 1, '05': 25, '32': 1, '07': 2, '36': 47, '21': 1, '1d': 3, '12': 68, '01': 1, '1e': 2, '0c': 2}
00 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
