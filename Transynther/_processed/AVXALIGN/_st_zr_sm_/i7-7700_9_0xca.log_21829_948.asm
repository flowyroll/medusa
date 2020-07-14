.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5130, %r14
clflush (%r14)
nop
xor %r8, %r8
mov (%r14), %r10w
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x600c, %rsi
lea addresses_WT_ht+0x1ba0c, %rdi
nop
nop
cmp $46719, %r15
mov $61, %rcx
rep movsq
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x19c0c, %rsi
lea addresses_WC_ht+0x10e0c, %rdi
sub $4464, %r8
mov $80, %rcx
rep movsw
nop
cmp %r9, %r9
lea addresses_A_ht+0x12b22, %rdi
nop
nop
and %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm3
and $0xffffffffffffffc0, %rdi
movaps %xmm3, (%rdi)
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0xa60c, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov (%rdi), %r15
cmp %rdi, %rdi
lea addresses_normal_ht+0x1158c, %r8
nop
nop
nop
nop
cmp %r9, %r9
movw $0x6162, (%r8)
dec %r10
lea addresses_A_ht+0x1720c, %rsi
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
and $50152, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rax
push %rdx

// Store
lea addresses_normal+0x1fe0c, %r12
clflush (%r12)
nop
dec %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
inc %rax

// Store
lea addresses_D+0x1260c, %r9
nop
nop
and %rdx, %rdx
movw $0x5152, (%r9)
and %r12, %r12

// Faulty Load
lea addresses_D+0x1260c, %rdx
nop
add %rax, %rax
movaps (%rdx), %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rdx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'00': 5020, '52': 16809}
52 52 52 52 52 52 52 00 52 52 52 00 52 52 00 00 00 52 52 52 00 52 52 52 52 00 00 00 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 00 00 00 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 00 52 00 52 52 52 52 00 52 00 52 52 52 52 00 52 52 52 00 00 52 00 52 52 52 00 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 00 00 00 52 52 52 52 52 52 52 00 00 52 52 52 52 52 00 52 00 00 00 52 52 52 00 00 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 00 52 00 52 00 52 52 00 52 52 52 52 52 00 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 52 00 00 52 52 52 52 52 00 52 00 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 00 00 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 00 00 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 00 52 00 52 52 52 00 52 52 00 52 52 00 52 52 00 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 00 52 52 52 00 00 00 00 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 00 00 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 00 00 00 52 52 52 52 52 52 00 52 52 00 00 00 00 52 00 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 00 52 00 52 00 52 00 00 00 00 00 52 52 52 52 00 52 52 52 00 00 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00
*/
