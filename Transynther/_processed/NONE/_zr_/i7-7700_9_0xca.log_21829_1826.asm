.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x10b7b, %rbp
nop
nop
nop
dec %rdi
mov (%rbp), %r14w
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x807b, %r10
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm7
and $0xffffffffffffffc0, %r10
vmovaps %ymm7, (%r10)
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x186d2, %r12
nop
nop
nop
nop
nop
lfence
movb $0x61, (%r12)
nop
nop
nop
and $36726, %r14
lea addresses_A_ht+0x1227b, %rbp
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %rbx
movq %rbx, (%rbp)
nop
dec %r9
lea addresses_A_ht+0x5315, %rbp
and %r12, %r12
mov (%rbp), %r14w
cmp %r9, %r9
lea addresses_WC_ht+0x1997b, %r9
nop
cmp $45215, %r14
movl $0x61626364, (%r9)
nop
nop
nop
nop
sub $18719, %r9
lea addresses_D_ht+0xd27b, %r10
clflush (%r10)
nop
nop
nop
add $65039, %r14
movups (%r10), %xmm6
vpextrq $0, %xmm6, %r12
inc %r14
lea addresses_D_ht+0x787b, %rsi
lea addresses_WC_ht+0x727b, %rdi
nop
nop
add $48550, %rbx
mov $9, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0x567b, %rsi
lea addresses_WT_ht+0xdb23, %rdi
nop
nop
xor %rbx, %rbx
mov $105, %rcx
rep movsw
and $62501, %r10
lea addresses_UC_ht+0xdd7b, %rdi
nop
nop
nop
nop
nop
xor $26999, %rsi
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rcx
xor $64703, %rbx
lea addresses_A_ht+0x1a7b, %rsi
lea addresses_UC_ht+0xca7b, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r14, %r14
mov $23, %rcx
rep movsq
cmp $3642, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx

// Load
lea addresses_RW+0x1777b, %r12
nop
xor $37782, %r11
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
inc %rcx

// Store
lea addresses_D+0x15bab, %rbp
nop
and %r11, %r11
movb $0x51, (%rbp)
nop
nop
nop
nop
add $19033, %r14

// Store
lea addresses_normal+0x1867b, %rbp
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_PSE+0x1da7b, %r12
nop
nop
xor $30292, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%r12)
nop
sub $42682, %r11

// Faulty Load
lea addresses_PSE+0x1da7b, %r12
nop
add $54031, %rbp
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
