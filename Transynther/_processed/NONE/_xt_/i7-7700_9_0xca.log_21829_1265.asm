.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1585e, %rdx
nop
nop
nop
add $53414, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
nop
cmp $5119, %r9
lea addresses_A_ht+0x19a0a, %rsi
lea addresses_WT_ht+0x62ca, %rdi
nop
sub %r15, %r15
mov $66, %rcx
rep movsw
nop
nop
and $43240, %rsi
lea addresses_D_ht+0x24ca, %rcx
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rcx)
and $10731, %r13
lea addresses_A_ht+0xcd0a, %rsi
lea addresses_UC_ht+0x10d0a, %rdi
nop
nop
dec %rax
mov $63, %rcx
rep movsw
nop
nop
nop
nop
nop
and $404, %r9
lea addresses_A_ht+0x108a, %r15
sub $51263, %rdx
movb $0x61, (%r15)
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0xfd0a, %rax
and $17210, %rdx
movw $0x6162, (%rax)
nop
xor %rax, %rax
lea addresses_WC_ht+0xdd0a, %rsi
lea addresses_WT_ht+0x1828a, %rdi
cmp $10700, %r15
mov $23, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x291a, %rsi
lea addresses_WT_ht+0x15b8a, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rdx, %rdx
mov $109, %rcx
rep movsw
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0xc98a, %r9
nop
nop
cmp %rsi, %rsi
mov (%r9), %edx
nop
inc %rdi
lea addresses_UC_ht+0x73a8, %rsi
nop
nop
nop
add %rcx, %rcx
mov (%rsi), %rdx
nop
nop
nop
nop
nop
sub %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_D+0x1e6ca, %rax
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
dec %r12

// Store
lea addresses_A+0x2e0a, %r15
and %r13, %r13
movb $0x51, (%r15)
cmp %rcx, %rcx

// Faulty Load
lea addresses_RW+0x1350a, %r12
nop
nop
nop
xor %rcx, %rcx
movups (%r12), %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
