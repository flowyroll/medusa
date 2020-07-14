.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd211, %rcx
nop
nop
nop
add $7732, %r14
mov (%rcx), %r9
nop
nop
nop
nop
nop
sub $18967, %rdi
lea addresses_A_ht+0x14499, %rsi
lea addresses_UC_ht+0x1b549, %rdi
clflush (%rdi)
nop
nop
sub %rbp, %rbp
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0xe699, %rsi
lea addresses_normal_ht+0x2ca1, %rdi
clflush (%rsi)
nop
nop
add $57165, %r9
mov $117, %rcx
rep movsl
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0xa659, %rcx
sub %rax, %rax
mov (%rcx), %rdi
nop
nop
nop
nop
sub $15596, %r9
lea addresses_WT_ht+0xca99, %rsi
lea addresses_UC_ht+0xba99, %rdi
nop
nop
cmp %r15, %r15
mov $25, %rcx
rep movsq
nop
nop
inc %rsi
lea addresses_D_ht+0x13319, %r15
nop
and %r14, %r14
movw $0x6162, (%r15)
xor %r15, %r15
lea addresses_UC_ht+0x19299, %rax
add %r15, %r15
movw $0x6162, (%rax)
inc %r15
lea addresses_A_ht+0x1be71, %rcx
nop
nop
nop
nop
cmp %r14, %r14
movb $0x61, (%rcx)
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x1d5a9, %rdi
nop
nop
nop
nop
add $52679, %r15
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x5a99, %r14
nop
nop
add %rbp, %rbp
mov (%r14), %ax
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdx

// Store
mov $0x499, %r15
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r15)
add %r11, %r11

// Store
lea addresses_WT+0xc0a9, %r11
nop
nop
xor %rbx, %rbx
movl $0x51525354, (%r11)
nop
nop
nop
add $3356, %r11

// Store
lea addresses_A+0x1ba99, %rbx
nop
inc %rdx
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
nop
inc %r15

// Load
lea addresses_PSE+0x13699, %rbx
and %r15, %r15
vmovups (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
nop
cmp $52034, %r13

// Faulty Load
lea addresses_A+0x16299, %rdx
nop
nop
nop
nop
nop
and $15308, %r11
vmovups (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8, 'NT': True, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 3}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'48': 5434, '45': 10459, '93': 1, 'ff': 1, '46': 1255, '49': 991, '00': 3688}
45 45 00 45 00 45 48 45 48 45 48 45 46 00 00 45 00 45 45 48 45 48 46 45 45 48 49 45 00 46 45 48 00 46 45 48 45 48 45 00 49 45 49 45 49 45 45 48 45 48 45 45 00 48 45 45 48 45 00 48 45 46 45 45 48 45 00 49 48 45 45 00 00 45 45 00 45 45 00 45 48 45 00 48 00 49 45 48 45 48 45 48 45 48 46 45 48 45 48 45 45 45 00 45 45 48 45 48 00 48 45 48 45 45 48 45 00 48 00 45 45 46 45 45 00 45 00 46 45 48 45 00 45 45 45 48 45 48 00 46 45 00 45 48 45 45 49 45 48 45 46 45 48 45 00 46 45 00 45 48 45 00 45 48 00 48 45 48 45 45 00 45 49 45 46 45 00 45 48 45 48 45 00 46 00 48 45 45 00 49 45 48 45 48 45 00 45 45 48 45 45 45 00 45 48 45 48 45 00 48 45 00 45 48 45 00 48 45 45 48 45 48 45 48 45 48 45 48 45 45 48 45 45 00 48 45 48 00 45 48 45 48 45 48 48 45 48 46 45 49 00 46 45 45 48 00 48 45 48 45 00 45 00 49 00 48 45 48 45 00 48 45 00 45 00 45 00 45 00 46 00 49 45 48 49 45 00 45 45 48 45 45 00 45 46 48 45 45 00 45 45 45 49 45 48 45 48 45 48 45 00 45 00 00 45 48 48 45 45 45 00 45 48 45 45 48 00 48 45 48 45 48 45 00 45 00 45 45 46 00 46 45 48 45 48 45 00 48 45 48 45 00 48 45 00 45 48 45 00 46 45 45 49 48 45 45 48 45 48 45 00 46 45 48 45 48 45 48 45 46 00 46 45 00 45 45 46 45 45 49 45 48 45 00 45 00 45 45 45 49 45 45 48 45 48 45 45 48 48 45 48 00 48 45 00 45 48 45 00 45 45 00 45 45 00 45 00 00 45 48 48 45 48 00 49 48 45 45 48 00 45 45 49 45 45 00 45 00 48 00 48 45 00 49 45 48 45 48 45 00 00 45 48 45 48 45 00 45 45 48 45 48 49 45 45 45 00 48 45 49 45 48 45 46 45 48 45 48 45 45 00 45 49 45 00 45 00 49 45 46 00 48 45 48 48 45 48 00 49 45 00 45 48 45 00 45 48 48 45 00 48 45 46 48 45 45 48 45 48 45 45 45 00 45 48 49 45 48 46 45 46 00 48 45 46 00 48 45 46 00 49 45 00 45 45 45 48 45 45 00 48 45 49 00 00 45 45 00 45 45 48 45 48 45 00 45 00 46 45 45 48 45 00 48 48 45 48 48 00 45 45 00 48 45 48 45 48 45 45 00 48 45 00 45 48 45 45 48 00 45 48 45 00 48 45 00 45 48 45 00 48 45 46 45 45 48 45 00 45 48 45 00 45 48 45 00 45 45 00 45 45 48 45 48 46 45 46 00 46 45 48 45 45 48 45 00 45 45 48 45 45 00 45 48 45 00 46 45 00 45 48 45 00 45 45 46 45 45 00 45 00 48 00 48 45 46 00 45 45 48 45 48 45 00 49 00 48 45 00 45 48 45 00 45 46 00 48 45 48 48 45 48 45 00 00 45 48 45 45 45 48 45 45 49 45 48 45 45 00 00 45 49 45 48 45 48 45 48 45 00 45 49 45 00 45 48 46 45 46 46 00 45 45 48 45 00 48 45 45 48 48 45 48 45 00 48 00 48 45 48 45 45 48 45 49 00 45 48 45 48 00 45 00 45 00 45 48 46 45 46 45 48 45 00 49 45 48 45 00 45 48 46 00 48 45 48 45 48 49 45 48 45 48 45 48 46 45 48 45 00 45 48 45 48 45 48 48 45 48 45 45 46 00 46 45 49 45 48 45 48 46 45 49 48 49 45 48 45 48 45 46 45 45 48 48 45 48 45 48 45 45 48 45 00 45 46 45 48 45 45 00 46 45 48 48 45 46 48 45 48 45 45 49 45 00 45 48 49 45 49 45 00 45 00 48 45 00 45 48 45 00 45 45 49 45 45 00 45 48 45 00 45 48 45 45 46 45 48 45 46 00 49 45 00 45 45 48 45 45 46 45 48 45 00 49 45 46 45 00 45 46 45 45 45 48 45 48 45 48 45 48 46 45 45 46 00 49 45 48 45 00 45 00 45 45 46 45 45 48 46 45 48 00 48 45 48 45 49 45 48 45 00 45 48 45 48 49 45 46 45 00 45 48 48 45 48 46 45 00 45
*/
